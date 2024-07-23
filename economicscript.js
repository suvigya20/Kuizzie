const quizData = [

    {
        question: " What do you mean by the supply of goods?",
        a: "Stock available for sale",
        b: "Total stock in the warehouse",
        c: "The actual production of the goods",
        d: "Quantity of the goods offered for sale at a particular price per unit of time",
        correct: "d",
    },
    {
        question: " What do you mean by ‘under conditions of a perfect competition in the product market’?",
        a: "MRP = VMP",
        b: "MRP > VMP",
        c: "VMP > MRP",
        d: "None of the above",
        correct: "a",

    },
    {
        question: " Which of the following is the relation that the law of demand defines?",
        a: "Income and price of a commodity",
        b: "Price and quantity of a commodity",
        c: "Income and quantity demanded",
        d: "Quantity demanded and quantity supplied",
        correct: "b",
    },
    {
        question: "What do you mean by a mixed economy?",
        a: " Modern and traditional industries",
        b: "Public and private sectors",
        c: "Foreign and domestic investments",
        d: "Commercial and subsistence farming",
        correct: "b",
    },
    {
        question: " What do you mean by the demand of a commodity?",
        a: "Desire for the commodity",
        b: "Need for the commodity",
        c: "Quantity demanded of that commodity",
        d: "Quantity that consumers are able and willing to buy at various prices during any particular period of time",
        correct: "d",
    },
    {
        question: " What do you mean by Gross National Product?",
        a: "The total value of goods and services produced in the country",
        b: "The total value of all the transactions in the country",
        c: "The depreciation in the total value of goods and services produced in the country",
        d: "The total value of goods and services produced in the country and the net factor income from abroad",
        correct: "d",
    },
    {
        question: " Which of the following is the reason for the decline in the child sex ratio in India? ",
        a: "Low fertility rate",
        b: "Female foeticide",
        c: "Incentives for a boy child from the government",
        d: " None of the above",
        correct: "b",
    },
    {
        question: " What factors are taken into consideration while revising the poverty line periodically?",
        a: "By conducting a survey every five years",
        b: "Survey carried out by National Sample Survey Organisation",
        c: "Both a and b",
        d: "None of the above",
        correct: "c",
    },
    {
        question: " When price floor is set above equilibrium price it will result in?",
        a: "Shortage",
        b: "Surpluses",
        c: "Equilibrium",
        d: " None of the above",
        correct: "b",
    },
    {
        question: "What is Gross Domestic Product?",
        a: "The total value of goods and services manufactured in the country",
        b: "The total value of all the transactions in the country",
        c: "The reduction in the total value of goods and services produced in the country",
        d: "The monetary value of all finished goods and services made within a country during a specific period.",
        correct: "d",
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


