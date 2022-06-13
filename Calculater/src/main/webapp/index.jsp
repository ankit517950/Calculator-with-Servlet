<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <style>
    .container{
        text-align: center;
        margin-top:23px
    }
    input{
        border-radius: 21px;
        border: 5px solid #244624;
        font-size:34px;
        height: 65px;
        width: 490px;
}
    .amit{
     width: 102px;
     height: 90px;
      border-radius: 20px;
      font-size: 60px;
      background: yellow;
      margin: 5px;
      padding: 5px;
}

    .calculator{
        border: 4px solid red;
        background-color: green;
        padding: 23px;
        border-radius: 53px;
        display: inline-block;
 }

    h1{
        font-size: 28px;
        font-family: 'Courier New', Courier, monospace;
    }

    </style>
</head>

<body>
        <h1 style text align = "center";>Calculator</h1>
        <form action = "registerServlet" method = "post">
        <div class="container">
        <div class="calculator">
         <table>
            <input type="text"  name="screen" id="screen">

                <tr>
                    <td><div class = "amit">(</div></td>
                    <td><div class = "amit">)</div></td>
                    <td><div class = "amit">C</div></td>
                    <td><div class = "amit">%</div></td>
                </tr>
                <tr>
                    <td><div class = "amit">7</div></td>
                    <td><div class = "amit">8</div></td>
                    <td><div class = "amit">9</div></td>
                    <td><div class = "amit">X</div></td>
                </tr>
                <tr>
                    <td><div class = "amit">4</div></td>
                    <td><div class = "amit">5</div></td>
                    <td><div class = "amit">6</div></td>
                    <td><div class = "amit">-</div></td>
                </tr>
                <tr>
                    <td><div class = "amit">1</div></td>
                    <td><div class = "amit">2</div></td>
                    <td><div class = "amit">3</div></td>
                    <td><div class = "amit">+</div></td>
                </tr>
                <tr>
                    <td><div class = "amit">0</div></td>
                    <td><div class = "amit">.</div></td>
                    <td><div class = "amit">/</div></td>
                    <td><button class= "amit">=</button></td>
                </tr>
       </table>
        </div>
           </div>
          </form>
<script>
let screen = document.getElementById('screen');
buttons = document.querySelectorAll('.amit');
let screenValue = '';
for (item of buttons) {
    item.addEventListener('click', (e) => {
        buttonText = e.target.innerText;
        console.log('button text is ', buttonText);
        if (buttonText == 'X') {
            buttonText = '*';
            screenValue += buttonText;
            screen.value = screenValue;
        }
        else if (buttonText == 'C') {
            screenValue = "";
            screen.value = screenValue;
        }
        else if (buttonText == '=') {
            screen.value = eval(screenValue);
        }
        else {
            screenValue += buttonText;
            screen.value = screenValue;
        }

    })
}
</script>
</body>
</html>
