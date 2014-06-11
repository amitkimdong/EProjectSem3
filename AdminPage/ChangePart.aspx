<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePart.aspx.cs" Inherits="Web_LuongTheVinh.ChangePart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 117px;
        }
        .style3
        {
            width: 320px;
        }
        .style4
        {
            width: 386px;
        }
        </style>         
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:Panel ID="pnUpdate" runat="server" Visible="true">
        <table class="TableUpdate" border="1">
            <tr>
                <td class="Control" colspan="2">
                    <div class="PageName">
                        Thay Linh KiỆN</div>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblProgramName" runat="server" Text="Program Name:"></asp:Label>
                </th>
                <td>
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnCheckProgramName"> 
                   
                    <asp:TextBox ID="txtProgramName" runat="server" CssClass="txtbox" 
                        Font-Bold="True" Font-Size="Larger" Height="30px">M4-F2 B34 TOP V1</asp:TextBox>
                     &nbsp;<asp:Button ID="btnCheckProgramName" runat="server" Height="30px" 
                        onclick="btnCheckProgramName_Click" Text="Check" />
                         </asp:Panel>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblPass" runat="server" Text="Model Name:"></asp:Label>
                </th>
                <td>
                    <asp:Panel ID="Panel3" runat="server" DefaultButton="btnCheckModelName">
                 
                    <asp:TextBox ID="txtModel" runat="server" Font-Bold="True" Font-Size="Larger" 
                            CssClass="txtbox" Height="30px"></asp:TextBox>
                    &nbsp;<asp:Button ID="btnCheckModelName" runat="server" Height="30px" 
                        onclick="btnCheckModelName_Click" Text="Check" />
                   </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="Control" colspan="2">
                  
                </td>
            </tr>
        </table>
    </asp:Panel>
      <asp:Panel ID="Panel2" runat="server">
                        <table cellpadding="0" cellspacing="0" class="TableUpdate">
                            <tr>
                                <th class="style2">
                                    <asp:Label ID="Label1" runat="server" Text="O/P Code:"></asp:Label>
                                </th>
                                <td class="style4">
                                    <asp:Panel ID="Panel4" runat="server">
                                        <asp:TextBox ID="txtOpCode1" runat="server" CssClass="txtbox" 
                                        Font-Bold="True"></asp:TextBox>
                                    <asp:Button ID="btnCheckOpcode1" runat="server" Text="Check" />
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="LabelStatusOPCode1" runat="server" Font-Bold="True" ForeColor="Red" 
                                        Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2">
                                    <asp:Label ID="Label2" runat="server" Text="Feeder No:"></asp:Label>
                                </th>
                                <td class="style4">
                                    <asp:Panel ID="Panel5" runat="server">
                                     <asp:TextBox ID="txtFeeder" runat="server" CssClass="txtbox" Font-Bold="True"></asp:TextBox>
                                    <asp:Button ID="btnCheckFeederNo" runat="server" Text="Check" />
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="LabelStatusFeederNo" runat="server" Font-Bold="True" ForeColor="Red" 
                                        Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2">
                                    <asp:Label ID="Label3" runat="server" Text="Empty Part No:"></asp:Label>
                                </th>
                                <td class="style4">
                                    <asp:Panel ID="Panel6" runat="server">
                                      <asp:TextBox ID="txtEmptyPart" runat="server" CssClass="txtbox" 
                                        Font-Bold="True"></asp:TextBox>
                                    <asp:Button ID="btnCheckEmptyPart" runat="server" Text="Check" />
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="LabelStatusEmptyPart" runat="server" Font-Bold="True" ForeColor="Red" 
                                        Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2">
                                    <asp:Label ID="Label4" runat="server" Text="New Part No:"></asp:Label>
                                </th>
                                <td class="style4">
                                    <asp:Panel ID="Panel7" runat="server">
                                       <asp:TextBox ID="txtNewPart" runat="server" CssClass="txtbox" 
                                        Font-Bold="True"></asp:TextBox>
                                    <asp:Button ID="btnCheckNewPart" runat="server" Text="Check" />
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="LabelStatusNewPartNo" runat="server" Font-Bold="True" ForeColor="Red" 
                                        Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2">
                                    <asp:Label ID="Label5" runat="server" Text="Type Name:"></asp:Label>
                                </th>
                                <td class="style4">
                                    <asp:Panel ID="Panel8" runat="server">
                                       <asp:TextBox ID="txtTypeName" runat="server" CssClass="txtbox" 
                                        Font-Bold="True"></asp:TextBox>
                                    <asp:Button ID="btnCheckTypeName" runat="server" Text="Check" />
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="LabelStatusTypeName" runat="server" Font-Bold="True" ForeColor="Red" 
                                        Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2">
                                    <asp:Label ID="Label6" runat="server" Text="Lot No:"></asp:Label>
                                </th>
                                <td class="style4">
                                    <asp:Panel ID="Panel9" runat="server">
                                      <asp:TextBox ID="txtLotNo" runat="server" CssClass="txtbox" Font-Bold="True"></asp:TextBox>
                                    <asp:Button ID="btnCheckLotNo" runat="server" Text="Check" />
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="LabelStatusLotNo" runat="server" Font-Bold="True" ForeColor="Red" 
                                        Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2">
                                    <asp:Label ID="Label7" runat="server" Text="O/P No:"></asp:Label>
                                </th>
                                <td class="style4">
                                    <asp:Panel ID="Panel10" runat="server">
                                  <asp:TextBox ID="txtOpCode2" runat="server" CssClass="txtbox" 
                                        Font-Bold="True"></asp:TextBox>
                                    <asp:Button ID="btnCheckOpCode2" runat="server" Text="Check" />
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="LabelStatusOpCode2" runat="server" Font-Bold="True" ForeColor="Red" 
                                        Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2">
                                    &nbsp;</th>
                                <td class="style4">
                                    <asp:Button ID="btnSave" runat="server" Height="38px" Text="Save" 
                                        Width="81px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>

</asp:Content>
