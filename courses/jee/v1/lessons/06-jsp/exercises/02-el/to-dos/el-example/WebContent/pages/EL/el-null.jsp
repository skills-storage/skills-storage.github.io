<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Null Expressions</title>
</head>
<body>
    <h1>EL - Expression Language</h1>
    <h3>NULL Expressions</h3>

    <br />
    <a href="<%=application.getContextPath()%>/index.jsp">На главную страницу</a>
    <br />
    <br />

    <table border="1">
        <tr>
            <th width="50px">№</th>
            <th width="150px">Выражение</th>
            <th width="150px">Результат</th>
        </tr>
        <tr>
            <td>1</td>
            <td>
                <pre>empty null</pre>
            </td>
            <td>
                ${empty null}
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>
                <pre>empty ""</pre>
            </td>
            <td>
                ${empty ""}
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>
                <pre>empty param.noSuchParam</pre>
            </td>
            <td>
                ${empty param.noSuchParam}
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>
                <pre>2 + null</pre>
            </td>
            <td>
                ${2 + null}
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>
                <pre>1.9 - null</pre>
            </td>
            <td>
                ${1.9 - null}
            </td>
        </tr>
        <tr>
            <td>6</td>
            <td>
                <pre>"" == null</pre>
            </td>
            <td>
                ${"" == null}
            </td>
        </tr>
        <tr>
            <td>7</td>
            <td>
                <pre>true && null</pre>
            </td>
            <td>
                ${true && null}
            </td>
        </tr>
    </table>
</body>
</html>