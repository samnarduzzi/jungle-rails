describe("Add to Cart", () => {
  it("should visit the home page", () => {
    cy.visit("http://localhost:3000/");
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 12 products on the page", () => {
    cy.get(".products article").should("have.length", 12);
  });

  it("clicks on a button and adds a product to the cart", () => {
    cy.visit("http://localhost:3000/");
    cy.contains("Add").first().click({ force: true });
  });

  it("checks the number of items in the cart", () => {
    cy.contains("My Cart (1)").should("include.text", "1");
  });
});