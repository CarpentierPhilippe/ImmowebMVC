

	<div class="container">
	  	<div class="row">
		    <div class="col-lg-6">
				<div class="modal fade" id="loginclient" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<section id="couleur1">		
							    <div class="bg-primary modal-header">
								    <h4 class="connect pt-2 pb-3 modal-title" id="exampleModalLabel">Connexion</h4>
								    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    					<span aria-hidden="true">&times;</span>
                  					</button>
								</div>
								<div class="modal-body">    	
								    <form action="" method="post" class="was-validated">
									    <div class="form-group row">
											<label for="username" class="col-sm-2 col-form-label">Email</label>
											<div class="col-sm-10">
											     <input type="email" class="form-control" id="username" placeholder="Votre mail" required>
											</div>
										</div>
										<div class="form-group row">
											<label for="password" class="col-sm-3 col-form-label">Mot de passe</label>
											<div class="col-sm-9">
											    <input type="password" class="form-control" id="password" placeholder="Votre mot de passe" required pattern="(?=^.{8,} $)((? =.*\D)|(? =.*\W+))(?![.\ N])(?=.*[AZ])(? =.*[az]).*$">
											</div>
										</div>
										<div class="form-group row ml-2">
											<div class="col-sm-10">
											    <button type="submit" class="btn btn-primary">Se connecter</button>
											</div>
										</div>
										<div class="form-group row ml-2">
											<div class="col-sm-10">
											    <h6>Vous n'avez pas de compte?</h6>
											    <a href="registerclient.jsp">inscrivez vous</a>
											</div>
										</div>
										<div class="modal-footer">
                  							<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                						</div>
							    	</form>
							    </div>
							</section>		
						</div>
					</div>
				</div>
		    </div>
	  	</div>
	</div>

