<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>JS Countdown Timer</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            width: 320px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }

        h2 {
            margin-bottom: 20px;
        }

        input {
            width: 80%;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 16px;
        }

        .btn {
            margin-top: 15px;
            padding: 10px 20px;
            border: none;
            border-radius: 25px;
            background: linear-gradient(45deg, #ff416c, #ff4b2b);
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            transform: scale(1.1);
        }

        #timer {
            font-size: 45px;
            font-weight: bold;
            margin-top: 20px;
            color: #ff4b2b;
        }
    </style>

    <script>
        let countdown;

        function startTimer() {
            let seconds = document.getElementById("txtSeconds").value;

            if (seconds === "" || seconds <= 0) {
                alert("Enter valid seconds");
                return;
            }

            clearInterval(countdown);

            let timeLeft = parseInt(seconds);

            document.getElementById("timer").innerHTML = timeLeft;

            countdown = setInterval(function () {

                timeLeft--;

                document.getElementById("timer").innerHTML = timeLeft;

                if (timeLeft <= 5) {
                    document.getElementById("timer").style.color = "red";
                }

                if (timeLeft <= 0) {
                    clearInterval(countdown);
                    document.getElementById("timer").innerHTML = "⏰ Time's Up!";
                }

            }, 1000);
        }
    </script>

</head>

<body>
    <form id="form1" runat="server">

        <div class="card">
            <h2>⏳ Countdown Timer</h2>

            <input type="number" id="txtSeconds" placeholder="Enter seconds" />

            <br />

            <button type="button" class="btn" onclick="startTimer()">Start</button>

            <div id="timer">0</div>
        </div>

    </form>
</body>
</html>