const quizData = [

    {
        question: " A cathode and an anode are the most common components of an electrochemical cell. Which of the following claims about the cathode is correct?",
        a: "Oxidation occurs at the cathode",
        b: "Electrons move into the cathode",
        c: "  Usually denoted by a negative sign",
        d: "Is usually made up of insulating material",
        correct: "b",
    },
    {
        question: " Which of the following claims about electrochemical cells is true?",
        a: " Cell potential is an extensive property",
        b: "Cell potential is an intensive property",
        c: "The Gibbs free energy of an electrochemical cell is an intensive property",
        d: "Gibbs free energy is undefined for an electrochemical cell",
        correct: "b",

    },
    {
        question: " Which of the following does not belong in the category of electrochemical cells?",
        a: "Voltaic cell",
        b: " Photovoltaic cell",
        c: "Electrolytic cell",
        d: "Fuel Cell",
        correct: "b",
    },
    {
        question: "Which of the following assertions about the main cell is correct?",
        a: " An example of a primary cell is a mercury cell",
        b: "An example of a primary cell is a nickel-cadmium storage cell",
        c: "The electrode reactions can be reversed",
        d: "It can be recharged",
        correct: "a",
    },
    {
        question: " In a dry cell, which of the following is the electrolyte?",
        a: "Potassium hydroxide",
        b: "Sulphuric acid",
        c: "Ammonium chloride",
        d: " Manganese dioxide",
        correct: "c",
    },
    {
        question: "Which of the following statements about a lead storage cell (or a lead-acid battery) is false?",
        a: "It is a primary cell",
        b: "The cathode is made up of lead(IV) oxide",
        c: "The anode is made up of lead",
        d: "The electrolyte used is an aqueous solution of sulphuric acid",
        correct: "a",
    },
    {
        question: " The conductivity of electrolytic conductors is due to __________",
        a: "Flow of free mobile electrons",
        b: "Movement of ions",
        c: " Either movement of electrons or ions",
        d: "Cannot be said",
        correct: "b",
    },
    {
        question: "The process of transmitting electric current through an electrolyte’s solution to decompose it is known as __________",
        a: "Electrolyte",
        b: "Electrode",
        c: " Electrolysis",
        d: "Electrochemical cell",
        correct: "c",
    },
    {
        question: " In a fuel cell, which of the following can be utilized as a fuel?",
        a: "Nitrogen",
        b: "Argon",
        c: "Hydrogen",
        d: "Helium",
        correct: "c",
    },
    {
        question: " Which of the following is given to a fuel cell’s cathode?",
        a: "Hydrogen",
        b: "Nitrogen",
        c: "Oxygen",
        d: "Chlorine",
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


