
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/hammer/hammer.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/typeahead-js/typeahead.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/js/menu.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/select2/select2.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/tagify/tagify.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/bootstrap-select/bootstrap-select.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/toastr/toastr.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/js/main.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/js/ui-modals.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/js/ui-toasts.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/js/ui-carousel.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/js/forms-tagify.js"></script>
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script src="<?=base_url().'assets/bo'?>/assets/js/dashboards-analytics.js"></script>



<script>
    AOS.init();
    function renderChart(){
        let o, r, e, t, s;
        s = isDarkStyle
            ? ((o = config.colors_dark.cardColor), (r = config.colors_dark.headingColor), (e = config.colors_dark.axisColor), config.colors_dark.borderColor)
            : ((o = config.colors.white), (r = config.colors.headingColor), (e = config.colors.axisColor), config.colors.borderColor);
        console.log(isDarkStyle);
        isDarkStyle?$(".apexcharts-legend-text").css({"color":"white"}):$(".apexcharts-legend-text").css({"color":"black"})
        var options = {
            markers: {
                size: 6,
                colors: "transparent",
                strokeColors: "transparent",
                strokeWidth: 4,
                hover: { size: 7 },
            },
            colors: [config.colors.primary],
            fill: { type: "gradient", gradient: { shade: t, shadeIntensity: 0.6, opacityFrom: 0.5, opacityTo: 0.25, stops: [0, 95, 100] } },
            grid: { borderColor: s, strokeDashArray: 3, padding: { top: -20, bottom: -8, left: -10, right: 8 } },

            series: [
                {
                    name: "Bulan Januari",
                    data: [45, 52, 38, 24, 33, 26, 21, 20, 6, 8, 15, 10],
                    style:{
                        colors: e
                    }
                },
                {
                    name: "Bulan Februari",
                    data: [35, 41, 62, 42, 13, 18, 29, 37, 36, 51, 32, 35]
                }
            ],
            chart: { foreColor: e,zoom: {enabled: false},height: 350, parentHeightOffset: 0, parentWidthOffset: 0, toolbar: { show: !1 }, type: "line" },
            dataLabels: {
                enabled: false
            },
            stroke: {
                width: [5, 7, 5],
                curve: 'smooth',
                dashArray: [0, 0, 0]
            },

            legend: {
                tooltipHoverFormatter: function(val, opts) {
                    return val + ' - ' + opts.w.globals.series[opts.seriesIndex][opts.dataPointIndex] + ''
                }
            },
            xaxis: {
                categories: [
                    '01 Jan', '02 Jan', '03 Jan', '04 Jan', '05 Jan', '06 Jan', '07 Jan', '08 Jan', '09 Jan','10 Jan', '11 Jan', '12 Jan'
                ], axisBorder: { show: !1 }, axisTicks: { show: !1 }, labels: { show: !0, style: { fontSize: "13px", colors: e } }
            },

            tooltip: {
                y: [
                    {
                        title: {
                            formatter: function (val) {
                                return val + " :"
                            }
                        }
                    },
                    {
                        title: {
                            formatter: function (val) {
                                return val + " "
                            }
                        }
                    }
                ]
            },

        };

        var chart = new ApexCharts(document.querySelector("#chart"), options);
        setTimeout(()=>chart.render(),300)

    }
    $(document).ready(()=>$('.selectpicker').selectpicker().change(()=>$(this).valid()));
</script>


</body>
</html>
