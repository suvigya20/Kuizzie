const quizData = [

    {
        question: " Which of the following are CPU scheduling algorithms?",
        a: " Priority scheduling",
        b: " Round Robin",
        c: "Shortest Job First",
        d: "All of the above",
        correct: "d",
    },
    {
        question: " Operating systems",
        a: "Provides a layer so as to act as a user-friendly interface that enables the programmer to draw a flow chart",
        b: " Links the program with subroutines",
        c: "Helps to create a flow chart of the programs",
        d: "All of these",
        correct: "a",

    },
    {
        question: " A process which is copied from main memory to secondary memory on the basis of requirement is known as -",
        a: "Demand paging",
        b: "Paging",
        c: "Threads",
        d: "Segmentation",
        correct: "a",
    },
    {
        question: " FIFO scheduling is a type of:",
        a: "Pre-emptive scheduling",
        b: "Non-pre-emptive scheduling.",
        c: "Deadline scheduling",
        d: "None of the above",
        correct: "b",
    },
    {
        question: " Which of the type of OS reads and reacts in terms of actual time?",
        a: "Quick sharing OS",
        b: "Time Sharing OS",
        c: "Real time OS",
        d: "Batch OS",
        correct: "c",
    },
    {
        question: " A systematic procedure for moving the CPU to new process is known as-",
        a: "Synchronization",
        b: "Deadlock",
        c: "Starvation",
        d: "Context Switching",
        correct: "d",
    },
    {
        question: " UNIX is written in which language?",
        a: "C#",
        b: "C++",
        c: "C",
        d: ".NET",
        correct: "c",
    },
    {
        question: "Thread is a",
        a: "Light weight process",
        b: "Heavy weight process",
        c: "Multi-process",
        d: "I/0 process",
        correct: "a",
    },
    {
        question: " OS classifies the threads as-",
        a: "Mainframe and motherboard level",
        b: "Kernel and User level",
        c: "Security and Memory level",
        d: "OS and CPU level",
        correct: "b",
    },
    {
        question: "What are the two types of operating modes of AT?",
        a: "Virtual mode, dedicated mode",
        b: "Private mode, public mode",
        c: "Real mode, protected mode",
        d: "Direct mode, indirect mode",
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


