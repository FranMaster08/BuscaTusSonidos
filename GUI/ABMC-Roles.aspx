<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ABMC-Roles.aspx.cs" Inherits="GUI.ABMC_Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="ABMRol">
        <h3>Listado de Roles</h3>
        <div class="row">
            <div class="BuscadorDiv">
                <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Agregar</button>
            </div>
        </div>
        <br />
        <div id="demo" class="collapse">
            <div class="container">
                <div class="row " style="height: 100vh">
                    <h3>Nuevo Rol</h3>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Nombre</label>
                                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="nombre" />
                            </div>
                            <div class="form-group">
                                <label>Tipo de Rol</label>
                                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="tipoRol" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Descripcion</label>
                                <asp:TextBox runat="server" type="text" CssClass="form-control" TextMode="MultiLine" ID="descripcion" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Button runat="server" content="nuevoUsuario" ID="Agregar" CssClass="btn btn-primary btn-lg" Text="Agregar" OnClick="sendAgregar_Click" />
                        </div>
                        <div class="col-md-4">
                            <asp:Button runat="server" content="nuevoUsuario" ID="cancelar" CssClass="btn btn-warning btn-lg" Text="Cancelar" OnClick="sendcancelar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <asp:GridView ID="gvRoles" runat="server" AutoGenerateColumns="false" class="table table-striped"
            ClientIDMode="Static">
            <Columns>
                <asp:BoundField DataField="IdRol" HeaderText="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                <asp:BoundField DataField="TipoRol" HeaderText="Tipo de Rol" />
                <asp:TemplateField HeaderText="Accion">
                    <ItemTemplate>
                        <div class="BtnGrid">
                            <asp:Button ID="btnEdit" Text="Editar" runat="server" OnClick="btnEdit_Click" CssClass="btn btn-primary" />
                            <asp:Button ID="btnDelete" Text="Eliminar" runat="server" CssClass="btn btn-danger"
                                OnClick="btnDelete_Click" OnClientClick="return confirm('¿Esta seguro que desea eliminar el registro?')" />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

 <style>
        .abmRol {
            width: 80vw;
            margin: auto;
            margin-top: 15vh !important;
        }

        .BtnGrid {
            display: flex;
            justify-content: space-between;
        }

        .tamanoHeader {
            width: 200px;
        }

        .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: middle;
            border-top: 1px solid #ddd;
        }

        .desc {
            width: 500px;
        }

        label {
            vertical-align: middle;
        }


    </style>
</asp:Content>
