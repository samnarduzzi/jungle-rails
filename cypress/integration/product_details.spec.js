describe("Visit Product Details", () => {
  it("should visit the home page", () => {
    cy.visit("http://localhost:3000/");
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 12 products on the page", () => {
    cy.get(".products article").should("have.length", 12);
  });

  it("clicks on a product and navigates to the product detail page", () => {
    cy.get(".products article").first().click();
    cy.url().should("include", "/products/");
    cy.get(".product-detail").should("be.visible");
  });
});