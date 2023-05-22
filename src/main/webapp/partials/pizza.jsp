<%--
  Created by IntelliJ IDEA.
  User: danielfarias
  Date: 5/22/23
  Time: 9:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Codeup's Pizzeria</title>
</head>
<body>
<form action="/pizza-order" method="post">
  <section>
    <label for=street-address>Street Address</label>
    <input type="text" name="location" id="street-address" placeholder="1234 S Pacific Way"> <br>
  </section>

  <section class="create-a-pizza">
    <label for="crust">Start by selecting your favorite crust.</label>
    <select name="crust" id=crust>
      <option value="original-crust">Original Crust</option>
      <option value="epic-stuffed-crust">Epic Stuffed Crust</option>
      <option value="thin-crust">Thin Crust</option>
      <option value="gluten-free">Gluten Free Crust</option>
    </select>

  </section>
  <hr>

  <section class="base">
    <h2>Create a Base</h2>
    <span>Size</span> <br>
    <input type="radio" name="size" id="small-size" value="small-size">
    <label for="small-size">Small</label><br>
    <input type="radio" name="size" id="medium-size" value="medium-size">
    <label for="medium-size">Medium</label><br>
    <input type="radio" name="size" id="large-size" value="large-size">
    <label for="large-size">Large</label><br>
    <input type="radio" name="size" id="extra-large-size" value="extra-large-size">
    <label for="extra-large-size">Extra Large</label><br>
    <br>
  </section>

  <section class="crust-flavor">
    <span>Crust Flavor</span> <br>
    <input type="radio" name="crust-flavor" id="flavor-none" value="flavor-none">
    <label for="flavor-none">None</label><br>
    <input type="radio" name="crust-flavor" id="flavor-garlic" value="flavor-garlic">
    <label for="flavor-garlic">Garlic Parmesean Cheese</label><br>
    <br>
  </section>
  <span>Sauce</span> <br>
  <input type="radio" name="sauce" id="none" value="none">
  <label for="none">None</label><br>
  <input type="radio" name="sauce" id="BBQ" value="BBQ">
  <label for="BBQ">BBQ</label><br>
  <input type="radio" name="sauce" id="ranch" value="ranch">
  <label for="ranch">Ranch</label><br>
  <input type="radio" name="sauce" id="original" value="original">
  <label for="original">Original</label><br>
  <input type="radio" name="sauce" id="buffalo" value="buffalo">
  <label for="buffalo">Buffalo</label><br>
  <input type="radio" name="sauce" id="alfredo" value="alfredo">
  <label for="alfredo">Alfredo</label><br>
  <br>
  </section>
  <hr>

  <section class="cheese">
    <h2>Cheese</h2>
    <span>How much cheese</span> <br>
    <input type="radio" name="cheese" id="normal-cheese" value="normal-cheese">
    <label for="normal-cheese">Normal Cheese</label><br>
    <input type="radio" name="cheese" id="light-cheese" value="light-cheese">
    <label for="light-cheese">Light Cheese</label><br>
    <input type="radio" name="cheese" id="no-cheese" value="no-cheese">
    <label for="no-cheese">No Cheese</label><br>
    <br>
  </section>
  <hr>

  <section class="meats">
    <h2>Meats</h2>
    <span>Meats</span> <br>
    <input type="checkbox" name="toppings" id="canadian-bacon" value="canadian-bacon">
    <label for="canadian-bacon">Canadian Bacon</label><br>
    <input type="checkbox" name="toppings" id="philly-steak" value="philly-steak">
    <label for="philly-steak">Philly Steak</label><br>
    <input type="checkbox" name="toppings" id="pepperoni" value="pepperoni">
    <label for="pepperoni">Pepperoni</label><br>
    <input type="checkbox" name="toppings" id="anchovies" value="anchovies">
    <label for="anchovies">Anchovies</label><br>
    <input type="checkbox" name="toppings" id="bacon" value="bacon">
    <label for="bacon">Bacon</label><br>
    <span>Veggies</span><br>
    <input type="checkbox" name="toppings" id="roma-tomatoes" value="roma-tomatoes">
    <label for="roma-tomatoes">Roma Tomatoes</label><br>
    <input type="checkbox" name="toppings" id="mushrooms" value="mushrooms">
    <label for="mushrooms">Mushrooms</label><br>
    <input type="checkbox" name="toppings" id="pineapple" value="pineapple">
    <label for="pineapple">Pineapple</label><br>
    <input type="checkbox" name="toppings" id="green-chiles" value="green-chiles">
    <label for="green-chiles">Green Chiles</label><br>
    <input type="checkbox" name="toppings" id="jalepeno-peppers" value="jalepeno-peppers">
    <hr>
  </section>
  <input type="submit" value="Send">
</form>
</body>
</html>
<body>

</body>
</html>
