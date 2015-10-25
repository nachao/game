
	<?php include './Main/Comm/header.php'; ?>

	<?php include './Main/Comm/menu.php'; ?>

	<h1 class="comm-title" id="aa">Welcome to "Count"</h1>
	<div class="main">
		<div class="label">
			<span><i class="iconfont icon-reward"></i>冠军+1000</span>
			<span><i class="iconfont icon-reward"></i>季军+500</span>
			<span><i class="iconfont icon-reward"></i>亚军+300</span>
			<!-- <span title="每参与一次就扣除1分"><i class="iconfont icon-reward"></i>每次-1</span> -->
		</div>
		<div class="depict">
			<a href="./countList.php" class="iconfont icon-time"></a><span id="mainDepict" >暂无冠军</span>
		</div>
	</div>

	<?php include './Main/User/simple.html'; ?>

	<?php include './Main/Count/index.html'; ?>

	<?php include './Main/Comm/footer.php'; ?>