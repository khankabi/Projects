<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .cont {
            display: inline-block;
            font-size: 2px;
            font-family: 'Ubuntu', sans-serif;
            margin-top: 0.5rem;
        }

        .typed {
            overflow: hidden;
            white-space: nowrap;
            width: 0;
            animation: typing infinite;
            animation-duration: 1.5s;
            animation-timing-function: steps(30, end);
            animation-fill-mode: forwards;
        }

        @keyframes typing {
            from {
                width: 0
            }

            to {
                width: 100%
            }
        }
    </style>
</head>

<body>
    <div class="cont">
        <h4 class="typed">SmileSculptors</h4>
    </div>
</body>

</html>