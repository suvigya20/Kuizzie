const quizData = [

    {
        question: " The change in the direction of a wave passing from one medium to another is termed as —————.",
        a: "Interference",
        b: "Mirage",
        c: "Diffraction",
        d: "Refraction",
        correct: "d",
    },
    {
        question: "What would be the angle of incidence for a light ray having zero reflection angle?",
        a: "180 degrees",
        b: "90 degrees",
        c: "0 degree",
        d: "45 degrees",
        correct: "c",

    },
    {
        question: " Light can be focused on our retina through which of the following phenomena?",
        a: "Interference",
        b: "Refraction",
        c: "Diffraction",
        d: "Mirage",
        correct: "b",
    },
    {
        question: " Speed of light in a vacuum is represented as —————.",
        a: "a",
        b: "v",
        c: "c",
        d: "l",
        correct: "c",
    },
    {
        question: " A full length of the image of a distant tall building can be seen using —————.",
        a: "a convex mirror",
        b: "a plane mirror",
        c: "a concave mirror",
        d: "none of the options",
        correct: "a",
    },
    {
        question: " Materials which do not allow electricity to pass through are known as —————–.",
        a: "Semiconductor",
        b: "Conductor",
        c: "Insulator",
        d: "Semi-insulator",
        correct: "c",
    },
    {
        question: " Tungsten is used in which of the following?",
        a: "Metal extraction",
        b: "Electric bulb",
        c: "Insulators",
        d: "Textile manufacturing",
        correct: "b",
    },
    {
        question: "Electric potential is a ————.",
        a: "Vector quantity",
        b: "Scalar quantity",
        c: "Dimensionless quantity",
        d: "None of these option",
        correct: "b",
    },
    {
        question: "Copper is used in electric transmission lines because ———————-.",
        a: "High resistivity",
        b: "Low resistivity",
        c: "No resistivity",
        d: "None of these option",
        correct: "b",
    },
    {
        question: "The SI unit of resistance is ————.",
        a: "Volt",
        b: "Faraday",
        c: "Ampere",
        d: "Ohm",
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


