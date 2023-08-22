<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>String Expressions</title>
</head>
<body>
    <h1>EL - Expression Language</h1>
    <h3>String Expressions</h3>

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
                <pre>'String 1' == 'String 1'</pre>
            </td>
            <td>
                ${'String 1' == 'String 1'}
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>
                <pre>'String 1' == 'String 2'</pre>
            </td>
            <td>
                ${'String 1' == 'String 2'}
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>
                <pre>'String 1' eq 'String 2'</pre>
            </td>
            <td>
                ${'String 1' eq 'String 2'}
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>
                <pre>'String 1' != 'String 2'</pre>
            </td>
            <td>
                ${'String 1' != 'String 2'}
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>
                <pre>'String 1' ne 'String 2'</pre>
            </td>
            <td>
                ${'String 1' ne 'String 2'}
            </td>
        </tr>

        <tr>
            <td>6</td>
            <td>
                <pre>'String 1' < 'String 2'</pre>
            </td>
            <td>
                ${'String 1' < 'String 2'}
            </td>
        </tr>
        <tr>
            <td>7</td>
            <td>
                <pre>'String 1' lt 'String 2'</pre>
            </td>
            <td>
                ${'String 1' lt 'String 2'}
            </td>
        </tr>
        <tr>
            <td>8</td>
            <td>
                <pre>'String 1' > 'String 2'</pre>
            </td>
            <td>
                ${'String 1' > 'String 2'}
            </td>
        </tr>
        <tr>
            <td>9</td>
            <td>
                <pre>'String 1' gt 'String 2'</pre>
            </td>
            <td>
                ${'String 1' gt 'String 2'}
            </td>
        </tr>
        <tr>
            <td>10</td>
            <td>
                <pre>'String 1' <= 'String 2'</pre>
            </td>
            <td>
                ${'String 1' <= 'String 2'}
            </td>
        </tr>
        <tr>
            <td>11</td>
            <td>
                <pre>'String 1' le 'String 2'</pre>
            </td>
            <td>
                ${'String 1' le 'String 2'}
            </td>
        </tr>
        <tr>
            <td>12</td>
            <td>
                <pre>'String 1' >= 'String 2'</pre>
            </td>
            <td>
                ${'String 1' >= 'String 2'}
            </td>
        </tr>
        <tr>
            <td>13</td>
            <td>
                <pre>'String 1' ge 'String 2'</pre>
            </td>
            <td>
                ${'String 1' ge 'String 2'}
            </td>
        </tr>
        <tr>
            <td>14</td>
            <td>
                <pre>true ? 'String 1' : 'String 2'</pre>
            </td>
            <td>
                ${true ? 'String 1' : 'String 2'}
            </td>
        </tr>
        <tr>
            <td>15</td>
            <td>
                <pre>false ? 'String 1' : 'String 2'</pre>
            </td>
            <td>
                ${false ? 'String 1' : 'String 2'}
            </td>
        </tr>
    </table>
</body>
</html>