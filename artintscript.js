const quizData = [

    {
        question: "What is the full form of AI ?",
        a: "Artificially Intelligent",
        b: "Artificial Intelligence",
        c: "Artificially Intelligence",
        d: "Advanced Intelligence",
        correct: "b",
    },
    {
        question: "Who is the inventor of Artificial Intelligence?",
        a: "Geoffrey Hinton",
        b: "Andrew Ng",
        c: "John McCarthy",
        d: "Jürgen Schmidhuber",
        correct: "c",

    },
    {
        question: "Which of the following is the branch of Artificial Intelligence?",
        a: "Machine Learning",
        b: "Cyber forensics",
        c: " Full-Stack Developer",
        d: "Network Design",
        correct: "a",
    },
    {
        question: "What is the goal of Artificial Intelligence?",
        a: "To solve artificial problems",
        b: "To extract scientific causes",
        c: "To explain various sorts of intelligence",
        d: "To solve real-world problems",
        correct: "c",
    },
    {
        question: "Who developed Python Programming Language?",
        a: "Wick van Rossum",
        b: "Rasmus Lerdorf",
        c: "Guido van Rossum",
        d: "Niene Stom",
        correct: "c",
    },
    {
        question: "Which type of Programming does Python support?",
        a: "object-oriented programming",
        b: "structured programming",
        c: "functional programming",
        d: "all of the mentioned",
        correct: "d",
    },
    {
        question: " Is Python case sensitive when dealing with identifiers?",
        a: "no",
        b: "yes",
        c: "machine dependent",
        d: "none of the mentioned",
        correct: "b",
    },
    {
        question: "What will be the value of the following Python expression? 4 + 3 % 5",
        a: "7",
        b: "2",
        c: "4",
        d: "1",
        correct: "a",
    },
    {
        question: "Which of the following is used to define a block of code in Python language?",
        a: "Indentation",
        b: "Key",
        c: "Brackets",
        d: "All of the mentioned",
        correct: "a",
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


