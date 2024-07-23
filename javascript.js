const quizData = [

    {
        question: " Number of primitive data types in Java are?",
        a: "6",
        b: "7",
        c: "8",
        d: "9",
        correct: "c",
    },
    {
        question: " What is the size of float and double in java?",
        a: "32 and 64",
        b: "32 and 32",
        c: "64 and 64",
        d: "64 and 32",
        correct: "a",

    },
    {
        question: " Automatic type conversion is possible in which of the possible cases?",
        a: "Byte to int",
        b: "Int to long",
        c: "Long to int",
        d: "Short to int",
        correct: "b",
    },
    {
        question: " Find the output of the following code. int integer=24; char String  = ‘I’",

        a: "Compile error",
        b: "Throws exception",
        c: "I",
        d: "24 I",
        correct: "d",
    },
    {
        question: " To successfully overload a method in java, the return types must be ______",
        a: "Same",
        b: "Different",
        c: "Same but using superclass or subclass types also work",
        d: "NOT",
        correct: "c",
    },
    {
        question: " Java method overloading implements the OPPS concept ______",
        a: "Inheritence",
        b: "Polymorphism",
        c: "Encapsulation",
        d: "None",
        correct: "b",
    },
    {
        question: " Select the valid statement",
        a: "char[] ch = new char(5)",
        b: "char[] ch = new char[5]",
        c: "char[] ch = new char()",
        d: "char[] ch = new char[]",
        correct: "b",
    },
    {
        question: "The keyword used to declare a java package is _______",
        a: "pkg",
        b: "package",
        c: "java.package",
        d: "None",
        correct: "b",
    },
    {
        question: " When an array is passed to a method, what does the method receive?",
        a: "The reference of the array",
        b: "A copy of the array",
        c: "Length of the array",
        d: "Copy of first element",
        correct: "a",
    },
    {
        question: "select the valid statement to declare and initialize an array",
        a: "int[] A = {}",
        b: "int[] A = {1, 2, 3}",
        c: "int[] A = (1, 2, 3)",
        d: "int[][] A = {1,2,3}",
        correct: "b",
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


