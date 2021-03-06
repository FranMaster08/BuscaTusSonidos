<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ABMC-Publicidad.aspx.cs" Inherits="GUI.ABMC_Publicidad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="ABMPublicidad">
        <h3>Listado de Publicidades</h3>
        <div class="row">
            <div class="BuscadorDiv">
                <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Agregar</button>
                <div class="input-group" id="BuscarControl">
                </div>
            </div>
        </div>
        <div id="demo" class="collapse">
            <div class="container">
                <div class="row " style="height: 100vh">
                    <h3>Nueva Publicidad</h3>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>ImageUrl</label>
                                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="imageUrl" />
                            </div>
                            <div class="form-group">
                                <label>NavigateUrl</label>
                                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="navigateUrl" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Fecha Inicio</label>
                                <asp:TextBox runat="server" type="date" CssClass="form-control" ID="fechaInicio" />
                            </div>
                            <div class="form-group">
                                <label>Fecha Fin</label>
                                <asp:TextBox runat="server" type="date" CssClass="form-control" ID="fechaFin" />
                            </div>
                       </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Button runat="server" content="nuevaPub" ID="Agregar" CssClass="btn btn-primary btn-md" Text="Agregar" OnClick="sendAgregar_Click" />
                        </div>
                        <div class="col-md-4">
                            <asp:Button runat="server" content="nuevaPub" ID="cancelar" CssClass="btn btn-warning btn-md" Text="Cancelar" OnClick="sendcancelar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <asp:GridView ID="gvPublicidad" runat="server" AutoGenerateColumns="false" class="table table-striped"
            ClientIDMode="Static">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="ImageUrl" HeaderText="ImageUrl" />
                <asp:BoundField DataField="NavigateUrl" HeaderText="NavigateUrl" />
                <asp:BoundField DataField="Dni" HeaderText="DNI" />
                <asp:TemplateField HeaderText="Action">
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
        .abmPublicidad {
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

        label {
            vertical-align: middle;
        }

    </style>
</asp:Content>

