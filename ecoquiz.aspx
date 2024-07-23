<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="q2.css">
	<title>My Quiz App</title>
</head>
<body>

	<div class="quiz-container" id="quiz">
		<div class="quiz-header">
			<label id="minutes">00</label>:<label id="seconds">00</label>
			<h2 id="question">Question Text</h2>
			<ul>
				<li>
					<input type="radio" name="answer" id="a" class="answer">
					<label for="a" id="a_text">Answer</label>
				</li>

				<li>
					<input type="radio" name="answer" id="b" class="answer">
					<label for="b" id="b_text">Answer</label>
				</li>

				<li>
					<input type="radio" name="answer" id="c" class="answer">
					<label for="c" id="c_text">Answer</label>
				</li>

				<li>
					<input type="radio" name="answer" id="d" class="answer">
					<label for="d" id="d_text">Answer</label>
				</li>

			</ul>
		</div>
		<br>
		<button id="skip">Skip</button>
		<button id="submit">Submit</button>


	</div>
	<br><br><br>
	<br><br><br>

	<br />
	<div class="mycls" id="123">
	</div>
    <script src="ecooquiz.js"></script>

</body>
</html>
