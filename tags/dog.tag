<dog>



	<div class="profile">
		<div  class="choose">
			<p>Choose a dog</P>
		  <select onchange={LoveDog} >
		    <option value="">-----</option>
		    <option value="Poddle">Poddle</option>
		    <option value="Husky">Husky</option>
				<option value="Golden Retriever">Golden Retriever</option>
		    <option value="Dachshund">Dachshund</option>
				<option value="Pomeranian">Pomeranian</option>
		  </select>
		</div>

		<div class="userForm">
			<div>
				<label for="image">Find an img of the dog you chose</label>
				<input id="image" type="text" onkeyup={ updateImageURL } placeholder="Enter URL">
			</div>
			<div>
				<label for="description">Why you chose that dog</label>
				<textarea id="description" rows="8" cols="40" value={ description } onkeyup={ updateDescription }></textarea>
			</div>
		</div>

		<div class="preview">
			<h2>The dog that I choose is</h2>
			<div class="preview-profile">
				<div class="thumb">
					<img src={ imageURL } alt="user image" />
					<h1>{ description }</h1>
				</div>
			</div>
		</div>
	</div>

	<pre>
	this.dog={dog};
	</pre>

	<script>
		// Our source of truth data

		this.dog="none selected";
		this.imageURL="http://5b0988e595225.cdn.sohucs.com/images/20171019/5c47d9f2454d4e54a0b3b2c469126267.jpeg";
		this.description="This is the reason why I choose this dog";


		/* Notice that I am NOT changing the HTML directly, I am changing the source of truth this.user data. Riot follows a "react" flow for updating the UI. We apply changes to the source of truth data, and Riot "reacts" to that by updating the UI. This keeps Riot short and sweet. */
		updateImageURL(event) {
			this.imageURL = event.target.value;
		}

		updateDescription(event) {
			console.log(event);
			this.description = event.target.value;
		}

		this.LoveDog=function(event){
		  this.dog=event.target.value
		};

	</script>


	<style>
		:scope {
			display: block;
			background: #F5F5F5;
			color: #333;
			padding: 15px;
		}
		h2 {
			border-bottom: 1px solid #CCC;
		}
		div {
			padding: 15px;
		}
		.userForm div, .preview div .choose div{
			padding: 0 0 10px 0;
		}
		.userForm, .preview .choose d{
			flex-grow: 1;
		}
		code {
			background: #DDD;
			border-radius: 4px;
			padding: 0 4px 1px;
			color: #333;
		}
		label {
			display: block;
		}
		.profile {
			display: flex;
			/*width: 100%;*/
		}
		.userForm {
			/*display: flex;*/
		}
		.choose{
			/*display: flex;*/

		}
		.preview-profile {
			display: flex;
		}
		.preview-profile .thumb {
			box-sizing: border-box;
			min-width: 150px;
			border: 1px solid #DDD;
			padding: 4px;
			line-height: 0;
		}
		.preview-profile img {
			width: 100%;
			margin: 0;
			padding: 0;
		}
		.preview-profile p {
			margin-left: 15px;
			margin-top: 0;
		}
		pre{
			text-align:center;
			font-family:"Times New Roman",Georgia,Serif;
			font-size:30px;
		  border: 5px solid black;
		  padding:20px;
		  border-radius: 6px;
		  background-color: red

		}
	</style>
</dog>
