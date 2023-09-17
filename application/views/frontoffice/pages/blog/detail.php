
<?php $this->load->view("frontoffice/component/headerPage",["controller"=>"Blog"]) ?>

<section class="blog-details-section ptb-100 bg-thin">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="blog-details-desc">
                    <div class="image">
                        <img src="<?=base_url().$row['gambar']?>" alt="image" />
                    </div>
                    <ul class="post-meta">
                        <li><i class="envy envy-calendar"></i><a href="#"><?=tglIndo($row['tanggal'])?></a></li>
                        <li><i class="envy envy-comment"></i>03 comments</li>
                    </ul>
                    <br>
                    <div class="content">
                        <h2><?=$row['judul']?></h2>
                        <p><?=$row['deskripsi'] ?></p>
                    </div>
                    <div class="article-share">
                        <div class="tags pb-3">
                            <?php if((array)count(json_decode($row["tags"],true)) > 0): foreach (json_decode($row["tags"],true) as $val): ?>
                                <a href="<?=base_url().'blog?q='.str_replace(' ','-',$val['value'])?>"># <?=$val['value']?></a>
                            <?php endforeach; endif; ?>
                        </div>
                    </div>
                    <hr/>
                    <div class="social-link">
                        <a href="#" class="bg-tertiary" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="bg-success" target="_blank"><i class="fab fa-tumblr"></i></a>
                        <a href="#" class="bg-danger" target="_blank"><i class="fab fa-youtube"></i></a>
                        <a href="#" class="bg-info" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="bg-pink" target="_blank"><i class="fab fa-instagram"></i></a>
                    </div>

                    <hr />

                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <aside class="widget-area">
                    <section class="widget widget-author">
                        <div>
                            <img src="<?=base_url().explode(',',$pengaturan['gambar'])[0]?>" alt="author" />
                        </div>
                        <br>
                        <div class="social-link">
                            <a href="#" class="bg-tertiary" target="_blank"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="bg-success" target="_blank"><i class="fab fa-tumblr"></i></a>
                            <a href="#" class="bg-danger" target="_blank"><i class="fab fa-youtube"></i></a>
                            <a href="#" class="bg-info" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#" class="bg-pink" target="_blank"><i class="fab fa-instagram"></i></a>
                        </div>
                    </section>
                    <div class="widget widget-search">
                        <form class="search-form search-top">
                            <input type="search" class="search-field" placeholder="Search article" />
                            <button type="submit" class="btn-text-only">
                                <i class="envy envy-magnify-glass"></i>
                            </button>
                        </form>
                    </div>
                    <section class="widget widget-article">
                        <h5 class="widget-title">Recent articles</h5>
                        <?php foreach ($recent as $val): ?>
                            <article class="article-item">
                                <a href="#" class="article-img">
                                    <img src="<?=base_url().$val['gambar']?>" alt="blog-image" style="max-height: 100px" />
                                </a>
                                <div class="info">
                                    <h6 class="title">
                                        <a href="<?=base_url().'blog/'.$val['slug']?>"><?=strSubstring($val['judul'],50)?></a>
                                    </h6>
                                </div>
                            </article>
                        <?php endforeach; ?>
                    </section>
                    <section class="widget widget-categories">
                        <h5 class="widget-title">Categories</h5>
                        <ul class="categorie-list">
                            <li>
                                <a href="#">Design</a>
                                <span class="total">17</span>
                            </li>
                            <li>
                                <a href="#">Development</a>
                                <span class="total">34</span>
                            </li>
                            <li>
                                <a href="#">Innovation</a>
                                <span class="total">10</span>
                            </li>
                            <li>
                                <a href="#">research</a>
                                <span class="total">35</span>
                            </li>
                        </ul>
                    </section>
                    <section class="widget widget-gallery">
                        <h5 class="widget-title">gallery</h5>
                        <div class="gallery-item">
                            <img src="assets/img/blog/blog_3.png" alt="blog-image" />
                            <img src="assets/img/blog/blog_7.png" alt="blog-image" />
                            <img src="assets/img/blog/blog_8.png" alt="blog-image" />
                            <img src="assets/img/blog/blog_6.png" alt="blog-image" />
                            <img src="assets/img/blog/blog_4.png" alt="blog-image" />
                            <img src="assets/img/blog/blog_5.png" alt="blog-image" />
                        </div>
                    </section>
                    <section class="widget widget-tag">
                        <h5 class="widget-title">Tags</h5>
                        <div class="tags">
                            <a href="#"> Desing </a>
                            <a href="#"> development </a>
                            <a href="#"> Technique </a>
                            <a href="#"> trendy </a>
                            <a href="#"> art </a>
                            <a href="#"> deployment </a>
                            <a href="#"> Technical </a>
                            <a href="#"> Technology </a>
                            <a href="#"> apps </a>
                            <a href="#"> mobile </a>
                            <a href="#"> start up </a>
                            <a href="#"> UI/UX </a>
                            <a href="#"> tips </a>
                        </div>
                    </section>
                </aside>
            </div>
        </div>
    </div>
</section>