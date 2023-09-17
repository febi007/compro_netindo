
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/apex-charts/apexcharts.js"></script>
<link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/apex-charts/apex-charts.css">


<style>
    /*.apexcharts-text>tspan {color:white!important;}*/
    tspan {
        white-space: inherit;
        color:white!important;
    }

</style>

<div class="row">
    <div class="col-lg mb-4 order-0">
        <div class="card">
            <div class="card-body px-0">
                <div class="tab-content p-0">
                    <div class="tab-pane fade show active" id="navs-tabs-line-card-income" role="tabpanel">
                        <div class="d-flex p-4 pt-3">
                            <div class="avatar flex-shrink-0 me-3">
                                <img src="<?=base_url().'assets/bo'?>/assets/img/icons/unicons/wallet.png" alt="User">
                            </div>
                            <div>
                                <small class="text-muted d-block">Total Balance</small>
                                <div class="d-flex align-items-center">
                                    <h6 class="mb-0 me-1">$459.10</h6>
                                    <small class="text-success fw-semibold">
                                        <i class='bx bx-chevron-up'></i>
                                        42.9%
                                    </small>
                                </div>
                            </div>
                        </div>
                        <div id="chart">

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script>
</script>