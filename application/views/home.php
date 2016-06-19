<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shop</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url('/assets/css/bootstrap.min.css');?>" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo base_url('/assets/css/modern-business.css');?>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url('/assets/font-awesome/css/font-awesome.min.css');?>" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation Top_Menu -->
    <?php $this->load->view('layout/navigation')?>
    <!-- Header Carousel -->
   
    <!-- Page Content -->
    <div class="container">
        <!-- Product Menu -->
        <?php $this->load->view('layout/product_menu')?>
        <!-- /.row -->
        <div class="row">
            
                        <!-- body items -->
            <!-- load products from table -->
			<?php foreach ($products as $product ) : ?>
             <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
						
							<h6><?=  $product->pro_name  ?> - <?=  $product->pro_title  ?></h6>
						 
                    </div>
                    <div class="panel-body" width="100px">
						<a href="">
						<style>#g {width:300%;height: 120px;}</style>
							<?php
								
								$product_image =['src'	=>'assets/uploads/'.$product->pro_image,
								
								'class'=>'img-responsive img-portfolio img-hover',
								'id'=>'g'
								];
								echo img($product_image);
							?>
						</a>
						<style>#t {width: 230px;height: 75px;overflow: scroll;}</style>
                        <p id="t"> <?=  $product->pro_description  ?></p>
                       <p><code>Price:</code> <?=  $product->pro_price  ?>  <code> Stock:</code> <?=  $product->pro_stock  ?> </p>
					   <?php  if($this->session->userdata('group')	!=	'1'  and $this->session->userdata('group')	!=	'2' ): ?>
                        <?=  anchor('home/add_to_cart/'.$product->pro_id,'Beli - Tambahkan ke Keranjang',['class'=>'btn btn-success  btn-xs','role'=>'button']) ?>
                        <ul class="nav nav-tabs navbar-right">
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown">Report <i class="fa fa-exclamation-triangle"></i></a> 
							<ul class="dropdown-menu">
							<li>
							<?=  anchor('home/report/'.$product->pro_id,"I dislike this product",["class'=>'btn  btn-xs"]) ?>
							</li>
							</ul>
						</li> 
						</ul>
						
						<?php else:?>
						<?=  anchor('admin/products/edit/'.$product->pro_id,'Edit',['class'=>'btn btn-success btn-xs']) ?>
						<?php  if($this->session->userdata('group')	==	'1' ): ?>
						<?=  anchor('admin/products/delete/'.$product->pro_id,'Delete',['class'=>'btn btn-danger btn-xs',
							'onclick'=>'return confirm(\'Are You Sure ? \')'
						]) ?>
						<?php else:?>
						<?=  anchor('admin/products/delete/','Delete',['class'=>'btn btn-danger btn-xs ','data-toggle'=>'button',
							'onclick'=>'return confirm(\'Sorry You Cant Delete it , Should Be Admin ! \')'
						]) ?>
						<?php endif;?>
						<?php endif;?>
                    </div>
                </div>
            </div>  
			<?php endforeach; ?>
        </div>

				
		
        <!-- /.row -->

        <!-- Features Section -->

        <!-- /.row -->

        <hr>

   

        <hr>

        <!-- Footer -->
        <?php $this->load->view('layout/footer')?>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="<?php echo base_url('/assets/js/jquery.js');?>"></script>
	
    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url('/assets/js/bootstrap.min.js');?>"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
