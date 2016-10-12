<div class="modal" id="policy">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<div class="col-md-12">
								<img src="resources/images/logoSB.png" class="img-responsive pull-left" alt="">
								<button type="button" class="close pull-right"
									data-dismiss="modal">
									<span>&times;</span>
								</button>
							</div>
						</div>
						<div class="modal-body">
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#home" >Projet</a></li>
							
								<li><a data-toggle="tab" href="#menu1" >Tache</a></li>
							</ul>

							<div class="tab-content container-fluid">
								<div id="home" class="tab-pane fade in active">
									<form:form id="div_add" method="post"
										action="/GestionSphere/projet/add"
										modelAttribute="projetModel" class="form-horizontal">

										<div class="form-group">
											<label for="nom-de-projet">Nom de projet</label>
											<form:input path="nomProjet" type="texte"
												class="form-control" id="nom-de-projet"
												aria-describedby="projetHelp" placeholder="Nom de projet" />
										</div>
										<div class="form-group">
											<label for="chef-de-projet">Chef de projet</label>
											<form:select path="idChef" items="${chefList}" itemValue="id"
												itemLabel="nom" class=" form-control" id="idChef" />
										</div>
										<div class="form-group">
											<label for="nom-de-client">Nom de client</label>
											<form:input path="nomClient" type="texte"
												class="form-control" id="nom-de-client"
												aria-describedby="clientHelp" placeholder="Nom de client" />
										</div>
										<button style="margin-bottom:5px;" id="btn_tacheADDP" type="submit" class="btn btn-default cnx-btn pull-right mrg">Ajouter</button>
									</form:form>
								</div>
								<div id="menu1" class="tab-pane fade">
									<form:form id="div_add" method="post"
										action="/GestionSphere/tache/add" modelAttribute="Tach"
										class="form-horizontal">
										<div class="form-group">
											<label for="nom-de-tache">Nom de tache</label>
											<form:input path="nomTache" type="texte" class="form-control"
												id="nom-de-projet" aria-describedby="tacheHelp"
												placeholder="Nom de tache" />
										</div>
										<div class="form-group">
											<form:select class="form-control" path="statutTache">
												<form:option selected="selected" value="Non d�mar�e">Non d�mar�e</form:option>
												<form:option value="En cours">En cours</form:option>
												<form:option value="En attente de validation interne">En attente de validation interne</form:option>
												<form:option value="En attente de validation client">En attente de validation client</form:option>
												<form:option value="Finalis�e et remis">Finalis�e et remis</form:option>		
											</form:select>
										</div>
										<div class="form-group row">
											<label for="datedTache" class="col-xs-4 col-form-label">Date
												de debut</label>
											<div class="col-xs-12">
												<form:input path="datedTache" type="date"
													class="form-control" id="datedTache" />
											</div>
										</div>
										<div class="form-group row">
											<label for="datefTache" class="col-xs-4 col-form-label">Date
												de fin</label>
											<div class="col-xs-12">
												<form:input path="datefTache" type="date"
													class="form-control" id="datefTache" />
											</div>
										</div>
										<div class="form-group">
											<label for="chef-de-projet">Nom de projet</label>
											<form:select path="idProjet" items="${listptache}"
												itemValue="idProjet" itemLabel="nomProjet"
												class=" form-control" id="idChef" />

										</div>
										<button style="margin-bottom:5px;" id="btn_tacheADDT" type="submit" class="btn btn-default cnx-btn pull-right mrg">Ajouter</button>
									</form:form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>