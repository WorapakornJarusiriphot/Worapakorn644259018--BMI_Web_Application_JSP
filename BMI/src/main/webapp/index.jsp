<%@ page import="com.bmi.HumanBeing, com.bmi.BmiIndexer" %>
<%
    String interpretation = null;
    double bmi = 0;

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        double weight = Double.parseDouble(request.getParameter("weight"));
        double height = Double.parseDouble(request.getParameter("height"));

        HumanBeing human = new HumanBeing();
        human.setWeight(weight);
        human.setHeight(height);
        human.calculateBmi();

        BmiIndexer bmiIndexer = new BmiIndexer();
        bmiIndexer.setHuman(human);
        bmi = bmiIndexer.getBmi();
        interpretation = bmiIndexer.interpretBMI();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <!-- [Your CSS and JS links here] -->
</head>
<body>
    <!-- [Your main content here] -->
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card shadow bg-dark">
                    <div class="card-body">
                        <h1 class="text-center mb-4">BMI Calculator</h1>
                        <form method="post" action="">
                            <div class="form-group">
                                <label for="weight">Weight (kg):</label>
                                <input type="text" class="form-control" name="weight" id="weight" required>
                            </div>
                            <div class="form-group">
                                <label for="height">Height (cm):</label>
                                <input type="text" class="form-control" name="height" id="height" required>
                            </div>
                            <button type="submit" class="btn btn-success btn-block">Calculate BMI</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <% if (interpretation != null) { %>
        <div class="result">
            <!-- [Display the results such as BMI, interpretation, etc.] -->
            BMI: <%= bmi %><br>
            Interpretation: <%= interpretation %>
        </div>
    <% } %>
</body>
</html>
