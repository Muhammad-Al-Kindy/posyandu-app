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
var ctx = document.getElementById("myAreaChart2");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["48 Bulan", "49 Bulan", "50 Bulan", "51 Bulan", "52 Bulan", "53 Bulan", "54 Bulan", "55 Bulan", "56 Bulan", "57 Bulan", "58 Bulan", "59 Bulan", "60 Bulan"],
    datasets: [
      {
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
      <?php for($b=60;$b>=0;$b--): ?>
        <?php for($a=$b;$a>=0;$a--): ?>
          <?php 
            if($dtProgressPanjang[$a] != 0){
              $dtProgressPanjang[$b] = ($dtProgressPanjang[$a] + (($dtProgressPanjang[$b+1] != 0) ? $dtProgressPanjang[$b+1] : $dtProgressPanjang[$a])) / 2;
              break;
            }else{
              $dtProgressPanjang[$b] = $dtProgressPanjang[$b];
            }
          ?>
        <?php endfor ?>
      <?php endfor ?>
      data: [<?= $dtProgressPanjang[48]; ?>,<?= $dtProgressPanjang[49]; ?>,<?= $dtProgressPanjang[50]; ?>,<?= $dtProgressPanjang[51]; ?>,<?= $dtProgressPanjang[52]; ?>,<?= $dtProgressPanjang[53]; ?>,<?= $dtProgressPanjang[54]; ?>,<?= $dtProgressPanjang[55]; ?>,<?= $dtProgressPanjang[56]; ?>,<?= $dtProgressPanjang[57]; ?>,<?= $dtProgressPanjang[58]; ?>,<?= $dtProgressPanjang[59]; ?>,<?= $dtProgressPanjang[60]; ?>],
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
      data: [115.7,116.4,117.1,117.7,118.4,119.1,119.8,120.4,121.1,121.8,122.4,123.1,123.7
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
      data: [111.3,112.0,112.7,113.3,114.0,114.6,115.2,115.9,116.5,117.1,117.7,118.3,118.9
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
      data: [102.7,103.3,103.9,104.5,105.0,105.6,106.2,106.7,107.3,107.8,108.4,108.9,109.4
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
      data: [94.1,94.6,95.1,95.6,96.1,96.6,97.1,97.6,98.1,98.5,99.0,99.5,99.9
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
      data: [89.8,90.3,90.7,91.2,91.7,92.1,92.6,93.0,93.4,93.9,94.3,94.7,95.2
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
            return number_format(value)+' cm';
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
          return Number(tooltipItem.yLabel).toFixed(1)+ ' (cm)';
        }
      }
    }
  }
});
</script>