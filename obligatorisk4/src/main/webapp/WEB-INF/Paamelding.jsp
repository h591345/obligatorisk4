<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="no">
<head>
    <link href="css/simple.css" rel="stylesheet" type="text/css" />
    <!-- <script src="js/myscript.js" defer></script> -->
    <title>Påmelding</title>
</head>
<body>
<h2>Påmelding</h2>
<form id="deltagerFormBean" action="/paamelding" method="post">
    <fieldset>
        <label for="fornavn">Fornavn</label>
        <!-- NB! Spring sin (form:input)-tag støtter ikke required alene,
        men greit med required="noe"! -->
        <input id="fornavn" name="fornavn" title="..." pattern=".*" placeholder="Fyll inn fornavn" required="required" type="text" value=""/>
        <label for="etternavn">Etternavn</label>
        <input id="etternavn" name="etternavn" title="..." pattern=".*" placeholder="Fyll inn etternavn" required="required" type="text" value=""/>
        <label for="mobil">Mobil (8 siffer)</label>
        <input id="mobil" name="mobil" title="..." pattern=".*" placeholder="Fyll inn telefonnummer" required="required" type="text" value=""/>
        <label for="passord">Passord</label>
        <input id="passord" name="passord" title="..." pattern=".*" placeholder="Velg et passord" type="password" required="required" value=""/>
        <label for="passordRepetert">Passord repetert</label>
        <input id="passordRepetert" name="passordRepetert" title="..." pattern=".*" placeholder="Gjenta passord" type="password" required="required" value=""/>
        <label for="kjonn">Kjønn:</label>
        <input id="kjonn1" name="kjonn" checked="checked" type="radio" value="mann"/>mann
        <input id="kjonn2" name="kjonn" type="radio" value="kvinne"/>kvinne
        <br><br><button type="submit">Meld meg på</button>
    </fieldset>
</form>
</body>
</html>
