const quizData = [

    {
        question: " Accounting provides data or information on",
        a: "Income and cost for the managers",
        b: "Financial conditions of the institutions",
        c: "Company’s tax liability for a particular year",
        d: "All the above",
        correct: "d",
    },
    {
        question: "Long term assets without any physical existence but, possessing a value are called",
        a: "Intangible assets",
        b: "Fixed assets",
        c: "Current assets",
        d: "Investments",
        correct: "a",

    },
    {
        question: "The assets that can be easily converted into cash within a short period, i.e., 1 year or less are known as",
        a: "Current assets",
        b: "Fixed assets",
        c: "Intangible assets",
        d: "Investments",
        correct: "a",
    },
    {
        question: " Copyrights, Patents and Trademarks are examples of",
        a: "Current assets",
        b: " Fixed assets",
        c: " Intangible assets",
        d: "Investments",
        correct: "c",
    },
    {
        question: "The debts which are to be repaid within a short period (a year or less) are referred to as,",
        a: "Current Liabilities",
        b: "Fixed liabilities",
        c: "Contingent liabilities",
        d: " All the above",
        correct: "a",
    },
    {
        question: " Net profit is calculated in which of the following account?",
        a: "Profit and loss account",
        b: "Balance sheet",
        c: " Trial balance",
        d: " Trading account",
        correct: "a",
    },
    {
        question: " In order to find out the value of the closing stock during the end of the financial year we,",
        a: "do this by stocktaking",
        b: "deduct the cost of goods sold from sales",
        c: "deduct opening stock from the cost of goods sold",
        d: "look in the stock account",
        correct: "a",
    },
    {
        question: "Which of these best explains fixed assets?",
        a: " Are bought to be used in the business",
        b: "Are expensive items bought for the business",
        c: " Are items which will not wear out quickly",
        d: " Are of long life and are not purchased specifically for resale",
        correct: "d",
    },
    {
        question: " The charges of placing commodities into a saleable condition should be charged to",
        a: "Trading account",
        b: "P & L a/c",
        c: "Balance Sheet",
        d: " None of the above",
        correct: "b",
    },
    {
        question: "Suppliers personal a/c are seen in the",
        a: "Sales Ledger",
        b: " Nominal ledger",
        c: " Purchases Ledger",
        d: "General Ledger",
        correct: "c",
    },

];


var userQues = [];
var userAns = [];
var correctAns = [];


const tele = document.getElementById('timeid')
const quiz = document.getElementById('quiz')
const response = document.getElementById('response')


const homep = document.getElementById('123')
const answerEls = document.querySelectorAll('.answer')
const questionEl = document.getElementById('question')
const a_text = document.getElementById('a_text')
const b_text = document.getElementById('b_text')
const c_text = document.getElementById('c_text')
const d_text = document.getElementById('d_text')
const submitBtn = document.getElementById('submit')
const skipBtn = document.getElementById('skip')


let currentQuiz = Math.floor(Math.random() * quizData.length);
let score = 0

var minutesLabel = document.getElementById("minutes");
var secondsLabel = document.getElementById("seconds");
var totalSeconds = 0;
setInterval(setTime, 1000);
let scnd = 0;
let minu = 0;
function setTime() {
    ++totalSeconds;
    scnd = pad(totalSeconds % 60);

    minu = pad(parseInt(totalSeconds / 60));

    secondsLabel.innerHTML = scnd
    minutesLabel.innerHTML = minu
}

function pad(val) {
    var valString = val + "";
    if (valString.length < 2) {
        return "0" + valString;
    } else {
        return valString;
    }
}

loadQuiz()
function loadQuiz() {
    deselectAnswers()
    const currentQuizData = quizData[currentQuiz]
    questionEl.innerText = currentQuizData.question
    a_text.innerText = currentQuizData.a
    b_text.innerText = currentQuizData.b
    c_text.innerText = currentQuizData.c
    d_text.innerText = currentQuizData.d
}

function deselectAnswers() {
    answerEls.forEach(answerEl => answerEl.checked = false)
}

function getSelected() {
    let answer
    answerEls.forEach(answerEl => {
        if (answerEl.checked) {
            answer = answerEl.id
        }
    })
    return answer
}

let count = 0;
let idx = 0;
function pushResponse() {

    var table = ` <table>
    <thead>
        <tr><th>Questions</th>
            <th>Your Choosen Answer</th>
            <th>Correct Answer</th>
        </tr>
    <thead>
</tbody>
`;

    for (var i = 0; i < userQues.length; i++) {
        table += '</td><th>' + userQues[i] + '</td><td>' + userAns[i] + '</td><td>' + correctAns[i] + '</td></tr>';
    }
    table += '</tbody><table>';

    quiz.innerHTML = `
<style>
div {
    min-height: 100px;
overflow: hidden;
    }
</style>
<div class="container">
<div class="row">
<div class="column-99">
<h2>You answered ${score}/${quizData.length}  questions correctly in ${minu} Mins ${scnd}Sec.</h2>
<button onclick="location.reload()">Reload</button>
<button onclick="location = './quizhpg.aspx'">EXIT</button>
</div>
</div>
</div>

<div class="container" style="background-color:#f1f1f1">
<div class="row">
<div class="column-99">

</div>
</div>
</div>`+ table
}

submitBtn.addEventListener('click', () => {
    const answer = getSelected();
    userAns[idx] = quizData[currentQuiz][answer];

    if (answer != undefined) {
        if (answer === quizData[currentQuiz].correct) {
            score++
        }
        userQues[idx] = quizData[currentQuiz].question;
        var x = quizData[currentQuiz].correct;
        correctAns[idx] = quizData[currentQuiz][x];
        idx++;

        if (count < quizData.length) {
            currentQuiz = Math.floor(Math.random() * quizData.length);
            loadQuiz()
        } else {
            pushResponse();
        }
        count++;
    }
})

skipBtn.addEventListener('click', () => {
    currentQuiz = Math.floor(Math.random() * quizData.length);
    if (true) {
        if (count < quizData.length) {
            currentQuiz = Math.floor(Math.random() * quizData.length);
            loadQuiz()
        }
        else {
            if (userQues.length == 0) {
                quiz.innerHTML = `<div class="container">
                <div class="row">
                <div class="column-99">
                <h2>You answered ${score}/${quizData.length}  questions correctly in ${minu} Mins ${scnd}Sec.</h2>
                <button onclick="location.reload()">Reload</button>
                <button onclick="location = './quizhpg.aspx'">EXIT</button>
                </div>
                </div>
                </div> `
            }
            else {
                pushResponse();
            }
        }
        count++;
    }
})


