<div class="row">
	<div class="small-12 columns">
		<g:form action="${action}" method="${method}" name="form-admin" id="${packageInstance?.id}" enctype="multipart/form-data">
			<div class="form-group">
				<label for="id">ID</label>
				<g:textField class="form-control" name="id" value="${packageInstance?.id}" disabled="disabled"/>
			</div>

			<div class="form-group">
				<label for="name">Package Name</label>
				<g:textField class="form-control" name="name" value="${packageInstance?.name}"/>
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<g:textArea class="form-control" name="description" rows="10" value="${packageInstance?.description}"/>
			</div>

			<div class="form-group">
				<label for="price">Price</label>
				<g:textField class="form-control" name="price" value="${packageInstance?.price}"/>
			</div>

			<div class="form-group">
				<label for="image">Image</label>
				<g:field class="form-control" name="image" value="${packageInstance?.image}" type="file" accept=".jpg"/>
			</div>

			<div class="form-group">
				<input type="reset" value="Reset" class="btn btn-default btn-lg" />
				<input type="submit" value="Submit" class="btn btn-primary btn-lg"/>
			</div>
		</g:form>
	</div>
</div>