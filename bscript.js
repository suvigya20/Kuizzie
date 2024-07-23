const quizData = [

    {
        question: "The different types of carbon compounds are ___.",
        a: "Lipids",
        b: "Nucleic acids",
        c: "Carbohydrates",
        d: "All of the above",
        correct: "d",
    },
    {
        question: "What is the total percentage of carbon present in the human body?",
        a: "15 to 16 per cent",
        b: "18 to 19 per cent",
        c: "20 to 25 per cent",
        d: "None of the above",
        correct: "b",

    },
    {
        question: "Which of the following statements is true about carbon?",
        a: "Carbon is the main component of carbohydrates.",
        b: "Carbon is a major component of living beings.",
        c: "Carbon is one of the basic building blocks for organic life",
        d: "All of the above",
        correct: "d",
    },
    {
        question: "In the atmosphere, carbon exists in the form of ___.",
        a: "Coal",
        b: "Carbon monoxide only",
        c: "Carbon dioxide only",
        d: "Both(b) and(c)",
        correct: "c",
    },
    {
        question: "What is the total percentage of carbon present in the atmosphere?",
        a: "0.04 percentage",
        b: "20 percentage",
        c: "0.09 percentage",
        d: "0 to 4 percentage",
        correct: "a",
    },
    {
        question: "Which of the following factors contributes to the carbon cycle ?",
        a: "Respiration",
        b: "Fossil fuels",
        c: "Photosynthesis",
        d: "All of the above",
        correct: "d",
    },
    {
        question: "Which of the following statements is true about the carbon cycle ?",
        a: "Respiration and photosynthesis are important parts of the carbon cycle",
        b: "Respiration and photosynthesis are important parts of the water cycle",
        c: "Respiration and photosynthesis are important parts of the nitrogen cycle",
        d: "None of the above.",
        correct: "a",
    },
    {
        question: "Which of the following serves as the main source of carbon for plants ?",
        a: "Fossil fuels",
        b: "Atmospheric carbon dioxide",
        c: "Both(a) and(b)",
        d: "None of the above",
        correct: "b",
    },
    {
        question: "One of the most important carbon compounds are ___.",
        a: "Charcoal",
        b: "Diamond",
        c: "Graphite",
        d: "Amorphous carbon",
        correct: "a",
    },
    {
        question: "Which of the following compounds is not a type of carbon compound ?",
        a: "Lipids",
        b: "Vitamins",
        c: "Nucleic acids",
        d: "Carbohydrates",
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


