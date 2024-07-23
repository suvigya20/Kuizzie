const quizData = [

    {
        question: " The physical layer is concerned with ___________",
        a: "bit-by-bit delivery",
        b: "process to process delivery",
        c: "application to application delivery",
        d: "port to port delivery",
        correct: "a",
    },
    {
        question: " Which transmission media provides the highest transmission speed in a network?",
        a: "coaxial cable",
        b: "twisted pair cable",
        c: "optical fiber",
        d: "electrical cable",
        correct: "c",

    },
    {
        question: " Bits can be sent over guided and unguided media as analog signal by ___________",
        a: "digital modulation",
        b: "amplitude modulation",
        c: " frequency modulation",
        d: "phase modulation",
        correct: "a",
    },
    {
        question: "The portion of physical layer that interfaces with the media access control sublayer is called ___________",
        a: "physical signalling sublayer",
        b: "physical data sublayer",
        c: "physical address sublayer",
        d: "physical transport sublayer",
        correct: "a",
    },
    {
        question: "The physical layer provides __________",
        a: "mechanical specifications of electrical connectors and cables",
        b: "electrical specification of transmission line signal level",
        c: "specification for IR over optical fiber",
        d: "all of the mentioned",
        correct: "d",
    },
    {
        question: "Transport layer aggregates data from different applications into a single stream before passing it to ____________",
        a: "network layer",
        b: " data link layer",
        c: "application layer",
        d: " physical layer",
        correct: "a",
    },
    {
        question: " Which of the following are transport layer protocols used in networking?",
        a: "TCP and FTP",
        b: "UDP and HTTP",
        c: "TCP and UDP",
        d: "HTTP and FTP",
        correct: "c",
    },
    {
        question: " User datagram protocol is called connectionless because _____________",
        a: "all UDP packets are treated independently by transport layer",
        b: "it sends data as a stream of related packets",
        c: "it is received in the same order as sent order",
        d: "it sends data very quickly",
        correct: "a",
    },
    {
        question: " The sharing of a medium and its link by two or more devices is called _________",
        a: "Fully duplexing",
        b: "Multiplexing",
        c: "Micropleixng",
        d: "Duplexing",
        correct: "b",
    },
    {
        question: "Multiplexing is used in _______",
        a: "Packet switching",
        b: "Circuit switching",
        c: "Data switching",
        d: "Packet & Circuit switching",
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


