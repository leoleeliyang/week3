<meme2>
	<div class="egg-frame" each="{item in items}">
		<img src={item.URL}/>
		<p>{item.caption}</p>
	</div>

	<script type="text/javascript">
		this.items = [
			{
				URL: "https://cdn1-www.dogtime.com/assets/uploads/gallery/siberian-husky-dog-breed-pictures/siberian-husky-dog-breed-pictures-9.jpg",
				caption: "Do you love husky?"
			},{
				URL: "https://gbgrr.org/wp-content/uploads/Home-page-donate.jpg",
				caption: "Do you love Golden Retriever?"
			},{
				URL: "https://c1.staticflickr.com/7/6018/6002712329_12b08031bb_b.jpg",
				caption: "Do you love Dachshund?"
			}
		]
	</script>

	<style>
		:scope {
			display: block;
		}
		.egg-frame {
			background-color: red;
			width: 30%;
			display: inline-block;
			border: 1px solid #yellow;
			border-radius: 6px;
			margin: 2px;
			padding: 10px;
		}
		img{
			width:100%;
		}
	</style>
</meme2>
