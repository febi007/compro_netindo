<?php $this->load->view("frontoffice/component/headerPage",["controller"=>"Contact"]) ?>

<section class="contact-section ptb-100 bg-thin">
    <div class="container">
        <div class="section-title">
            <h2>Get In Touch</h2>
        </div>
        <div class="row">
            <div class="col-lg-8 col-sm-12">
                <form id="contactForm">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" id="name" required="" data-error="Please enter your name" placeholder="Name" />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="form-group">
                                <input type="email" name="email" class="form-control" id="email" required="" data-error="Please enter your email" placeholder="Email" />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <input type="text" name="subject" class="form-control" id="subject" required="" data-error="Please enter your phone number" placeholder="Subject" />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <textarea name="message" id="message" class="form-control" cols="30" rows="6" required="" data-error="Please enter your message" placeholder="Message..."></textarea>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <div class="form-check agree-label">
                                    <input name="gridCheck" value="I agree to the terms and privacy policy." class="form-check-input" type="checkbox" id="gridCheck" required>
                                    <label class="form-check-label" for="gridCheck">
                                        Accept <a href="terms-condition.html">Terms & Conditions</a> And <a href="privacy-policy.html">Privacy Policy.</a>
                                    </label>
                                    <div class="help-block with-errors gridCheck-error"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12">
                            <button type="submit" class="btn btn-solid">send message</button>
                            <div id="msgSubmit" class="h5 text-center hidden"></div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-4 col-sm-12">
                <div class="contact-widget">
                    <div class="info-title">
                        <h5>contact info</h5>
                    </div>
                    <div class="contact-info">
                        <i class="envy envy-pin"></i>
                        <p>113 Solit, White House, New Jersey, USA</p>
                    </div>
                    <div class="contact-info">
                        <i class="envy envy-call"></i>
                        <p>
                            <a href="tel:+001-548-159-2491">+001-548-159-2491</a>
                        </p>
                        <br>
                        <p>
                            <a href="tel:+001-548-159-2492">+001-548-159-2492</a>
                        </p>
                    </div>
                    <div class="contact-info">
                        <i class="envy envy-plane"></i>
                        <p>
                            <a href="mailTo:hello@solit.com"><span class="__cf_email__" data-cfemail="97fff2fbfbf8d7e4f8fbfee3b9f4f8fa">[email&#160;protected]</span></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
