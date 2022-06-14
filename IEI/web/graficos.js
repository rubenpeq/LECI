function desenhaGraficoLine() {
    $("#grafico-line").highcharts({
    chart: { type: "line" },
    title: { text: "Média de temperaturas" },
    xAxis: { categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
    "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
    },
    series:[
    { name: "Lisboa",
    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    },
    {
        name: "Aveiro",
        data: [8,9,11,12,14,17,19,19,18,15,11,9]
    }
    ]
    });
};

function desenhaGraficoColumn() {
    $("#grafico-column").highcharts({
    chart: { type: "column" },
    title: { text: "Média de temperaturas" },
    xAxis: { categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
    "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
    },
    series:[
    { name: "Lisboa",
    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    },
    {
        name: "Aveiro",
        data: [8,9,11,12,14,17,19,19,18,15,11,9]
    }
    ]
    });
};

function desenhaGraficoPie() {
    $("#grafico-pie").highcharts({
    chart: { type: "pie" },
    title: { text: "Média de temperaturas" },
    xAxis: { categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
    "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
    },
    series:[
    { name: "Lisboa",
    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    },
    {
        name: "Aveiro",
        data: [8,9,11,12,14,17,19,19,18,15,11,9]
    }
    ]
    });
};

function desenhaGraficoScatter() {
    $("#grafico-scatter").highcharts({
    chart: { type: "scatter" },
    title: { text: "Média de temperaturas" },
    xAxis: { categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
    "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
    },
    series:[
    { name: "Lisboa",
    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    },
    {
        name: "Aveiro",
        data: [8,9,11,12,14,17,19,19,18,15,11,9]
    }
    ]
    });
};

function desenhaGraficoBar() {
    $("#grafico-bar").highcharts({
    chart: { type: "bar" },
    title: { text: "Média de temperaturas" },
    xAxis: { categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
    "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
    },
    series:[
    { name: "Lisboa",
    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    },
    {
        name: "Aveiro",
        data: [8,9,11,12,14,17,19,19,18,15,11,9]
    }
    ]
    });
};

function desenhaGraficoArea() {
    $("#grafico-area").highcharts({
    chart: { type: "area" },
    title: { text: "Média de temperaturas" },
    xAxis: { categories: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
    "Jul", "Ago", "Set", "Out", "Nov", "Dez"]
    },
    series:[
    { name: "Lisboa",
    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    },
    {
        name: "Aveiro",
        data: [8,9,11,12,14,17,19,19,18,15,11,9]
    }
    ]
    });
};