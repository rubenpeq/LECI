function desenhaGraficoColumn() {
    $("#grafico-column").highcharts({
    chart: { type: "column" },
    title: { text: "Média de fps em Jogos" },
    xAxis: { categories: ["CS:GO", "LoL", "GTA V", "RSS", "ACO", "SoTR",
    "FF XV", "FH"]
    },
    series:[
    { name: "2019",
    data: [305.1,
        571.5,
        88.5,
        225.7,
        68.6,
        95.4,
        84.5,
        152.1]
    },
    {
        name: "2021",
        data: [334.8,
            513.9,
            93.0,
            209.3,
            71.2,
            95.8,
            80.7,
            185.3]
    }
    ]
    });
    console.log("Graphic Loaded");
};

function desenhaGraficoColumn1() {
    $("#grafico-column").highcharts({
    chart: { type: "column" },
    title: { text: "Ryzen 3600X" },
    xAxis: { categories: ["R20-SC","R20-MC","R15-SC","R15-MC","GB5-SC","GB5-MC","Blender"]
    },
    series:[
    { name: "2019",
    data: [501,
        3751,
        204,
        1647,
        1245,
        6992,
        233.9]
    },
    {
        name: "2021",
        data: [505,
            3780,
            217,
            1709,
            1245,
            7002,
            215.4]
    }
    ]
    });
    console.log("Graphic Loaded");
};

function desenhaGraficoColumn2() {
    $("#grafico-column").highcharts({
    chart: { type: "column" },
    title: { text: "Radeon 5600XT" },
    xAxis: { categories: ["Furmark","Heaven DX11"]
    },
    series:[
    { name: "2019",
    data: [5697,
        4433]
    },
    {
        name: "2021",
        data: [6507,
            4487]
    }
    ]
    });
    console.log("Graphic Loaded");
};