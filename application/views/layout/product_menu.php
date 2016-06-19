
		<!-- Product Menu -->
		<div class="row">            
             <hr>            
            <div class="col-md-12">
                <div class="panel panel-default">
                    <!--
                    <div class="panel-heading">
                        <h4><i class="fa fa-th-large"></i> Category: <i class="fa fa-arrow-circle-down"></i> </h4>
                    </div>
                    -->
                    <div class="panel-body">
                        <p> 
							<?php foreach ($starts as $start ) : ?>
							<!-- here to get name of product and show all ot same type -->
								<?=  anchor('home/showme/'.$start->pro_name,$start->pro_name,['class'=>'btnk btnk-default']) ?>
                            <?php endforeach; ?>
                        </p>
                    </div>
                </div>
            </div> 
        </div>