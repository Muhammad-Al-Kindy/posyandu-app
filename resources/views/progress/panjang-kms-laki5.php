<script>
  // Set new default font family and font color to mimic Bootstrap's default styling
  Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
  Chart.defaults.global.defaultFontColor = '#858796';

  function number_format(number, decimals, dec_point, thousands_sep) {
    // *     example: number_format(1234.56, 2, ',', ' ');
    // *     return: '1 234,56'
    number = (number + '').replace(',', '').replace(' ', '');
    var n = !isFinite(+number) ? 0 : +number,
      prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
      sep = (typeof thousands_sep === 'undefined') ? '.' : thousands_sep,
      dec = (typeof dec_point === 'undefined') ? ',' : dec_point,
      s = '',
      toFixedFix = function(n, prec) {
        var k = Math.pow(10, prec);
        return '' + Math.round(n * k) / k;
      };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
    if (s[0].length > 3) {
      s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    }
    if ((s[1] || '').length < prec) {
      s[1] = s[1] || '';
      s[1] += new Array(prec - s[1].length + 1).join('0');
    }
    return s.join(dec);
  }

  // Area Chart Example
  var ctx = document.getElementById("myAreaChart");
  var myLineChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: ["48 Bulan", "49 Bulan", "50 Bulan", "51 Bulan", "52 Bulan", "53 Bulan", "54 Bulan", "55 Bulan", "56 Bulan", "57 Bulan", "58 Bulan", "59 Bulan", "60 Bulan"],
      datasets: [{
          label: "Panjang Badan Bayi",
          lineTension: 0.3,
          backgroundColor: "rgba(78, 115, 223, 0.025)",
          borderColor: "rgba(78, 115, 223, 1)",
          pointRadius: 3,
          pointBackgroundColor: "rgba(78, 115, 223, 1)",
          pointBorderColor: "rgba(78, 115, 223, 1)",
          pointHoverRadius: 3,
          pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
          pointHoverBorderColor: "rgba(78, 115, 223, 1)",
          pointHitRadius: 10,
          pointBorderWidth: 2,
          data: [<?= $dtProgressPanjang[0]; ?>,<?= $dtProgressPanjang[1]; ?>,<?= $dtProgressPanjang[2]; ?>,<?= $dtProgressPanjang[3]; ?>,<?= $dtProgressPanjang[4]; ?>,<?= $dtProgressPanjang[5]; ?>,<?= $dtProgressPanjang[6]; ?>,<?= $dtProgressPanjang[7]; ?>,<?= $dtProgressPanjang[8]; ?>,<?= $dtProgressPanjang[9]; ?>,<?= $dtProgressPanjang[10]; ?>,<?= $dtProgressPanjang[11]; ?>,<?= $dtProgressPanjang[12]; ?>],
        },
        {
          label: "Tinggi",
          lineTension: 0.3,
          backgroundColor: "rgba(78, 115, 223, 0)",
          borderColor: "rgba(231,74,59,0.2)",
          pointRadius: 0,
          pointBackgroundColor: "rgba(231,74,59,0.2)",
          pointBorderColor: "rgba(231,74,59,0.2)",
          pointHoverRadius: 3,
          pointHoverBackgroundColor: "rgba(231,74,59,0.2)",
          pointHoverBorderColor: "rgba(231,74,59,0.2)",
          pointHitRadius: 10,
          pointBorderWidth: 1,
          data: [115.9,116.6,117.3,117.9,118.6,119.2,119.9,120.6,121.2,121.9,122.6,123.2,123.9
],
        },
        {
          label: "Normal",
          lineTension: 0.3,
          backgroundColor: "rgba(78, 115, 223, 0)",
          borderColor: "rgba(246,194,62,0.2)",
          pointRadius: 0,
          pointBackgroundColor: "rgba(246,194,62,0.2)",
          pointBorderColor: "rgba(246,194,62,0.2)",
          pointHoverRadius: 3,
          pointHoverBackgroundColor: "rgba(246,194,62,0.2)",
          pointHoverBorderColor: "rgba(246,194,62,0.2)",
          pointHitRadius: 10,
          pointBorderWidth: 1,
          data: [111.7,112.4,113.0,113.6,114.2,114.9,115.5,116.1,116.7,117.4,118.0,118.6,119.2
],
        },
        {
          label: "Normal",
          lineTension: 0.3,
          backgroundColor: "rgba(78, 115, 223, 0)",
          borderColor: "rgba(54,185,204,0.2)",
          pointRadius: 0,
          pointBackgroundColor: "rgba(54,185,204,0.2)",
          pointBorderColor: "rgba(54,185,204,0.2)",
          pointHoverRadius: 3,
          pointHoverBackgroundColor: "rgba(54,185,204,0.2)",
          pointHoverBorderColor: "rgba(54,185,204,0.2)",
          pointHitRadius: 10,
          pointBorderWidth: 1,
          data: [103.3,103.9,104.4,105.0,105.6,106.1,106.7,107.2,107.8,108.3,108.9,109.4,110.0
],
        },
        {
          label: "Pendek",
          lineTension: 0.3,
          backgroundColor: "rgba(78, 115, 223, 0)",
          borderColor: "rgba(246,194,62,0.2)",
          pointRadius: 0,
          pointBackgroundColor: "rgba(246,194,62,0.2)",
          pointBorderColor: "rgba(246,194,62,0.2)",
          pointHoverRadius: 3,
          pointHoverBackgroundColor: "rgba(246,194,62,0.2)",
          pointHoverBorderColor: "rgba(246,194,62,0.2)",
          pointHitRadius: 10,
          pointBorderWidth: 1,
          data: [94.9,95.4,95.9,96.4,96.9,97.4,97.8,98.3,98.8,99.3,99.7,100.2,100.7
],
        },
        {
          label: "Pendek",
          lineTension: 0.3,
          backgroundColor: "rgba(78, 115, 223, 0)",
          borderColor: "rgba(231,74,59,0.2)",
          pointRadius: 0,
          pointBackgroundColor: "rgba(231,74,59,0.2)",
          pointBorderColor: "rgba(231,74,59,0.2)",
          pointHoverRadius: 3,
          pointHoverBackgroundColor: "rgba(231,74,59,0.2)",
          pointHoverBorderColor: "rgba(231,74,59,0.2)",
          pointHitRadius: 10,
          pointBorderWidth: 1,
          data: [90.7,91.2,91.6,92.1,92.5,93.0,93.4,93.9,94.3,94.7,95.2,95.6,96.1
],
        },
      ],
    },
    options: {
      maintainAspectRatio: false,
      layout: {
        padding: {
          left: 10,
          right: 25,
          top: 25,
          bottom: 0
        }
      },
      scales: {
        xAxes: [{
          time: {
            unit: 'date'
          },
          gridLines: {
            display: true,
            drawBorder: true
          },
          ticks: {
            maxTicksLimit: 7
          }
        }],
        yAxes: [{
          ticks: {
            maxTicksLimit: 5,
            padding: 10,
            stepSize: 3.5,
            // Include a dollar sign in the ticks
            callback: function(value, index, values) {
              return number_format(value) + ' cm';
            }
          },
          gridLines: {
            color: "rgb(234, 236, 244)",
            zeroLineColor: "rgb(234, 236, 244)",
            drawBorder: true,
            borderDash: [2],
            zeroLineBorderDash: [2]
          }
        }],
      },
      legend: {
        display: true
      },
      tooltips: {
        backgroundColor: "rgb(255,255,255)",
        bodyFontColor: "#858796",
        titleMarginBottom: 10,
        titleFontColor: '#6e707e',
        titleFontSize: 14,
        borderColor: '#dddfeb',
        borderWidth: 1,
        xPadding: 15,
        yPadding: 15,
        displayColors: true,
        intersect: false,
        mode: 'index',
        caretPadding: 10,
        callbacks: {
          label: function(tooltipItem, chart) {
            var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
            return Number(tooltipItem.yLabel).toFixed(1) + ' (cm)';
          }
        }
      }
    }
  });
</script>