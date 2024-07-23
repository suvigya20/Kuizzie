const quizData = [

    {
        question: " Which of these types is not provided by C but is provided by C++?",
        a: " double",
        b: "float",
        c: "bool",
        d: " int",
        correct: "c",
    },
    {
        question: "Which concept do we use for the implementation of late binding?",
        a: "Static Functions",
        b: "Constant Functions",
        c: "Operator Functions",
        d: "Virtual Functions",
        correct: "d",

    },
    {
        question: " Which of these won’t return any value?",
        a: "void",
        b: "null",
        c: "free",
        d: " empty",
        correct: "a",
    },
    {
        question: " Which function do we use for checking if a character is a space or a tab?",
        a: "isdigit()",
        b: " isblank()",
        c: " isalnum()",
        d: " isalpha()",
        correct: "b",
    },
    {
        question: " __________ is an ability of grouping certain lines of code that we need to include in our program?",
        a: "macros",
        b: "modularization",
        c: " program control",
        d: "specific task",
        correct: "b",
    },
    {
        question: "Which of these keywords do we use for the declaration of the friend function?",
        a: "myfriend",
        b: "classfriend",
        c: "friend",
        d: " firend",
        correct: "c",
    },
    {
        question: " What is used for dereferencing?",
        a: "pointer with asterix",
        b: " pointer without asterix",
        c: "value with asterix",
        d: "value without asterix",
        correct: "a",
    },
    {
        question: " What does polymorphism stand for?",
        a: "a class that has four forms",
        b: "a class that has two forms",
        c: "a class that has only a single form",
        d: "a class that has many forms",
        correct: "d",
    },
    {
        question: " What handler do we use if we want to handle all the types of exceptions?",
        a: " try-catch handler",
        b: "catch-none handler",
        c: "catch-all handler",
        d: "catch handler",
        correct: "c",
    },
    {
        question: " Which of the following type is provided by C++ but not C?",
        a: "double",
        b: "float",
        c: "int",
        d: "bool",
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


