<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="TiempoRtaConsultaProd.aspx.cs" Inherits="GUI.TiempoRtaConsultaProd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="TiempoRtaConsultaProd">
        <h3>Tiempo de respuesta sobre consulta de productos</h3>
        <br />
        <div class="row">
            <div class="BuscadorDiv">
                <div class="input-group" id="BuscarControl">
                    <table>
                        <tr>
                            <td>
                                <label>Producto</label>
                                <asp:TextBox ID="producto" runat="server" type="text" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <label>Usuario</label>
                                <asp:TextBox ID="usuario" runat="server" type="text" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <label>Fecha de Pregunta desde</label>
                                <asp:TextBox ID="desde" runat="server" type="date" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <label>Fecha Pregunta hasta</label>
                                <asp:TextBox ID="hasta" runat="server" type="date" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:Button runat="server" CssClass="btn btn-primary btn-sm" Height="35" Text="Buscar" OnClick="Buscar_Click" ></asp:Button>

                <asp:Button runat="server" ID="btnXls" CssClass="btn btn-success btn-sm" Height="35" Text="XLS" OnClick="ExportXls_Click" ></asp:Button>

                <asp:Button runat="server" ID="btnPdf" CssClass="btn btn-danger btn-sm" Height="35" Text="PDF" OnClick="ExportPdf_Click" ></asp:Button>

            </div>
        </div>
        <br />
        
        <asp:GridView ID="gvTiempoRtaConsultaProd" runat="server" AutoGenerateColumns="false" class="table table-striped"
            ClientIDMode="Static">
            <Columns>
                <asp:BoundField DataField="NombreProducto" HeaderText="Nombre Producto" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" />
                <asp:BoundField DataField="Pregunta" HeaderText="Pregunta" />
                <asp:BoundField DataField="FechaPregunta" HeaderText="Fecha Pregunta" />
                <asp:BoundField DataField="Respuesta" HeaderText="Respuesta" />
                <asp:BoundField DataField="FechaRespuesta" HeaderText="Fecha Respuesta" />
                <asp:BoundField DataField="TiempoRespuesta" HeaderText="Tiempo de Respuesta" />
            </Columns>
        </asp:GridView>
    </div>

 <style>
      
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
         .BuscadorDiv{
             margin-bottom:10px;
         }
        .BuscadorDiv,
        .BuscadorDiv .controlBuscar {
            display: flex;
            align-content: center;
            vertical-align: middle;

        }

        #BuscarControl{
            margin-left:20px;
        }

        .BtnBuscar{
            background-color:#0476C1;
        }
    </style>
</asp:Content>
