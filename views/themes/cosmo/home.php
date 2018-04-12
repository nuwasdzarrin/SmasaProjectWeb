<?php defined('BASEPATH') OR exit('No direct script access allowed');?>

			<?php $query = get_image_sliders(); if ($query->num_rows() > 0) { ?>
				<!-- Image Slider -->
				<div class="row slider">
					<div class="col-xs-12 col-md-12">
					
						<div id="image-slider" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner" role="listbox">
								<?php $idx = 0; foreach($query->result() as $row) { ?>
								<div class="item <?=$idx==0?'active':''?>">
									<img src="<?=base_url('media_library/image_sliders/'.$row->image);?>" alt="..." style="width:85%; margin-left: auto; margin-right: auto";>
									<div class="carousel-caption">
										<?=$row->caption;?>
									</div>
								</div>
								<?php $idx++; } ?>
							</div>
							<a class="left carousel-control" href="#image-slider" role="button" data-slide="prev">
					        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					        <span class="sr-only">Previous</span>
					      </a>
					      <a class="right carousel-control" href="#image-slider" role="button" data-slide="next">
					        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					        <span class="sr-only">Next</span>
					      </a>
						</div>
					</div>
				</div>
				<!-- End Image Slider -->
				<?php } ?>

<div class="col-xs-12 col-md-12">
	
	<!-- Popular Posts -->
	
	<!-- End Popular Posts -->

	<?php if ($this->uri->segment(1) != 'sambutan-kepala-sekolah') { ?>
	<ol class="breadcrumb post-header">
		<li><i class="fa fa-sign-out"></i> Sambutan Kepala Sekolah</li>
	</ol>
	<div class="row">
		<div class="col-xs-12 col-md-12">
 				<div class="col-xs-3 col-md-3">
 				<div class="photo">
 				<img src="<?=base_url('media_library/images/').$this->session->userdata('headmaster_photo');?>" alt="..." style="width: 70%;">
 				</div>
				<h4 style="padding-left: 5px;"><?=$this->session->userdata('headmaster')?></h4>
				
				</div>
				<div class="col-xs-9 col-md-9">
 				<p align="justify" style="font-family:'Titillium Web',sans-serif;font-size:15px;"><?=word_limiter(strip_tags(get_welcome()), 60);?></p>
				<p>
				<a href="<?=site_url('sambutan-kepala-sekolah');?>" class="btn btn-success btn-sm" role="button">Selengkapnya <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
				</p>
				</div>
	 			
	 	</div>
  	
  	</div>

  	<?php } ?>

  	<!--visi misi sman 1 ngawi-->
  	<div id="visi">
  	<ol class="breadcrumb post-header">
		<li><i class="fa fa-sign-out"></i> Visi Misi SMAN 1 NGAWI</li>
	</ol>
	<div class="row" style="background:#304c70;">
		<div class="col-xs-12 col-md-12">
 			<div class="row">
 				<div class="col-xs-1 col-md-2"></div>
 				<div class="col-xs-10 col-md-8">
 					
 				<div id="visimisi">
 				<h3 style="color: #ff0;font-family:'Titillium Web',sans-serif;">Visi:</h3>
				<p style="padding-right: 15px; color: white;font-family:'Titillium Web',sans-serif;font-size:17px;">berilamn, Berilmu, kreatif, dan Berbudaya</p>
				<h3 style="color: #ff0;font-family:'Titillium Web',sans-serif;">Misi:</h3>
				<p align="justify" style="padding-right: 15px;">
					<ul style=" color: white;font-family:'Titillium Web',sans-serif;font-size:17px;">
						<li>berilman kepada tuhan yang maha esa</li>
						<li>mencari ilmu hingga ke tujuh samudra</li>
						<li>memiliki jiwa kreatif</li>
						<li>tidak lupa akan budaya sendiri</li>
					</ul>
				</p>
				</div>
 				</div>
 				<div class="col-xs-1 col-md-2"></div>
 			</div>
	 	</div>
  	
  	</div>
  	</div>

	<!-- Recent Posts -->
	<?php 
	$query = get_recent_posts(5); if ($query->num_rows() > 0) { 
		$posts = [];
		foreach ($query->result() as $post) {
			array_push($posts, $post);
		}
	?>
	<!-- Title -->
	<ol class="breadcrumb post-header">
		<li><i class="fa fa-sign-out"></i> Recent Post</li>
	</ol>
	<div class="row">
		<div class="col-md-6">
			<?php if (count(array_slice($posts, 0, 1)) > 0) { ?>
					<?php foreach(array_slice($posts, 0, 1) as $row) { ?>
					<div class="thumbnail no-border">
						<img src="<?=base_url('media_library/posts/medium/'.$row->post_image)?>" style="width: 100%; display: block;">
						<div class="caption">
							<h4><a href="<?=site_url('read/'.$row->id.'/'.$row->post_slug)?>"><?=$row->post_title?></a></h4>
							<p class="by-author"><?=day_name(date('N', strtotime($row->created_at)))?>, <?=indo_date($row->created_at)?> | oleh <?=$row->post_author?></p>
							<p align="justify"><?=substr(strip_tags($row->post_content), 0, 165)?></p>
							<p>
								<a href="<?=site_url('read/'.$row->id.'/'.$row->post_slug)?>" class="btn btn-success btn-sm" role="button">Selengkapnya <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
							</p>
						</div>
					</div>
				<?php } ?>
			<?php } ?>
		</div>
		<div class="col-md-6">
			<?php if (count(array_slice($posts, 1)) > 0) { ?>
			<ul class="media-list main-list">
				<?php foreach(array_slice($posts, 1) as $row) { ?>
				<li class="media">
					<a class="pull-left" href="<?=site_url('read/'.$row->id.'/'.$row->post_slug)?>">
						<img class="media-object" src="<?=base_url('media_library/posts/thumbnail/'.$row->post_image)?>" alt="...">
					</a>
					<div class="media-body">
						<h4><a href="<?=site_url('read/'.$row->id.'/'.$row->post_slug)?>"><?=$row->post_title?></a></h4>
						<p class="by-author"><?=day_name(date('N', strtotime($row->created_at)))?>, <?=indo_date($row->created_at)?></p>
					</div>
				</li>
				<?php } ?>
			</ul>
			<?php } ?>
		</div>
	</div>	
	<?php } ?>
	<!-- End Recent Posts -->


	<?php $query = get_albums(2); if ($query->num_rows() > 0) { ?>
	<!-- Gallery Photo -->
	<ol class="breadcrumb post-header">
		<li><i class="fa fa-camera"></i> Gallery Photo</li>
		<span class="pull-right"><a href="<?=site_url('gallery-photo')?>"><i class="fa fa-plus"></i></a></span>
	</ol>
	<div class="row">
		<?php foreach($query->result() as $row) { ?>
		<div class="col-md-6 col-xs-12">
			<div class="thumbnail">
				<img style="cursor: pointer; width: 100%; height: 250px;" onclick="preview(<?=$row->id?>)" src="<?=base_url('media_library/albums/'.$row->album_cover)?>">
				<div class="caption">
					<h4><?=$row->album_title?></h4>
					<p><?=$row->album_description?></p>
					<button onclick="preview(<?=$row->id?>)" class="btn btn-success btn-sm"><i class="fa fa-search"></i></button>
				</div>
			</div>
		</div>
		<?php } ?>
	</div>
	<?php } ?>

	<?php $query = get_recent_video(2); if ($query->num_rows() > 0) { ?>
	<!-- Gallery Video -->
	<ol class="breadcrumb post-header">
		<li><i class="fa fa-film"></i> VIDEO TERBARU</li>
		<span class="pull-right"><a href="<?=site_url('gallery-video')?>"><i class="fa fa-plus"></i></a></span>
	</ol>
	<div class="row">
		<?php foreach($query->result() as $row) { ?>
		<div class="col-md-6 col-xs-12">
			<div class="thumbnail" style="width: 100%; display: block;">
				<?=$row->post_content?>	
			</div>
		</div>
		<?php } ?>	
	</div>
	<?php } ?>
</div>
<?php //$this->load->view('themes/cosmo/sidebar')?>