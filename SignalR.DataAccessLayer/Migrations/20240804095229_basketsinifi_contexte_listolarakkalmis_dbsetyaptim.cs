using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SignalR.DataAccessLayer.Migrations
{
    /// <inheritdoc />
    public partial class basketsinifi_contexte_listolarakkalmis_dbsetyaptim : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Basket_Products_ProductID",
                table: "Basket");

            migrationBuilder.DropForeignKey(
                name: "FK_Basket_RestaurantTables_RestaurantTableID",
                table: "Basket");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Basket",
                table: "Basket");

            migrationBuilder.RenameTable(
                name: "Basket",
                newName: "Baskets");

            migrationBuilder.RenameIndex(
                name: "IX_Basket_RestaurantTableID",
                table: "Baskets",
                newName: "IX_Baskets_RestaurantTableID");

            migrationBuilder.RenameIndex(
                name: "IX_Basket_ProductID",
                table: "Baskets",
                newName: "IX_Baskets_ProductID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Baskets",
                table: "Baskets",
                column: "BasketID");

            migrationBuilder.AddForeignKey(
                name: "FK_Baskets_Products_ProductID",
                table: "Baskets",
                column: "ProductID",
                principalTable: "Products",
                principalColumn: "ProductID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Baskets_RestaurantTables_RestaurantTableID",
                table: "Baskets",
                column: "RestaurantTableID",
                principalTable: "RestaurantTables",
                principalColumn: "RestaurantTableID",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Baskets_Products_ProductID",
                table: "Baskets");

            migrationBuilder.DropForeignKey(
                name: "FK_Baskets_RestaurantTables_RestaurantTableID",
                table: "Baskets");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Baskets",
                table: "Baskets");

            migrationBuilder.RenameTable(
                name: "Baskets",
                newName: "Basket");

            migrationBuilder.RenameIndex(
                name: "IX_Baskets_RestaurantTableID",
                table: "Basket",
                newName: "IX_Basket_RestaurantTableID");

            migrationBuilder.RenameIndex(
                name: "IX_Baskets_ProductID",
                table: "Basket",
                newName: "IX_Basket_ProductID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Basket",
                table: "Basket",
                column: "BasketID");

            migrationBuilder.AddForeignKey(
                name: "FK_Basket_Products_ProductID",
                table: "Basket",
                column: "ProductID",
                principalTable: "Products",
                principalColumn: "ProductID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Basket_RestaurantTables_RestaurantTableID",
                table: "Basket",
                column: "RestaurantTableID",
                principalTable: "RestaurantTables",
                principalColumn: "RestaurantTableID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
