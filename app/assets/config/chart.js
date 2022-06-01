var blackKing = document.getElementsByName('blackKing');
var blackQueen = document.getElementsByName('blackQueen');
var blackRook = document.getElementsByName('blackRook');
var blackBishop = document.getElementsByName('blackBishop');
var blackKnight = document.getElementsByName('blackKnight');
var blackPawn = document.getElementsByName('blackPawn');

var whiteKing = document.getElementsByName('whiteKing');
var whiteQueen = document.getElementsByName('whiteQueen');
var whiteRook = document.getElementsByName('whiteRook');
var whiteBishop = document.getElementsByName('whiteBishop');
var whiteKnight = document.getElementsByName('whiteKnight');
var whitePawn = document.getElementsByName('whitePawn');

var figuresNumber = blackKing.length + blackQueen.length + blackRook.length + blackBishop.length + blackKnight.length + blackPawn.length + whiteKing.length + whiteQueen.length + whiteRook.length + whiteBishop.length + whiteKnight.length + whitePawn.length;

const labels = [

    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' '
];

const data = {
    labels: labels,
    datasets: [{
        label: 'Amount of chess figures',

        backgroundColor: ['lightgreen','gold','red','beige','purple','wheat','lightseagreen','steelblue','orange','purple','salmon','sandybrown','indigo'],
        borderColor: 'black',
        borderWidth: 2,
        data: [whiteKing.length, whiteQueen.length, whiteRook.length, whiteBishop.length, whiteKnight.length, whitePawn.length, blackKing.length, blackQueen.length, blackRook.length, blackBishop.length, blackKnight.length, blackPawn.length, figuresNumber],
        // data: [1, 1, 0, 1, 1, 4, 1, 1, 1, 0, 1, 3, 15],
    }]
};

const config = {
    type: 'bar',
    data: data,
    options: {}
};

const myChart = new Chart(
    document.getElementById('myChart'),
    config
);

