<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Boolean Expressions</title>
</head>
<body>
    <h1>EL - Expression Language</h1>
    <h3>Boolean Expressions</h3>

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
                <pre>! true</pre>
            </td>
            <td>
                ${! true}
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>
                <pre>not true</pre>
            </td>
            <td>
                ${not true}
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>
                <pre>! false</pre>
            </td>
            <td>
                ${! false}
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>
                <pre>not false</pre>
            </td>
            <td>
                ${not false}
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>
                <pre>true && true</pre>
            </td>
            <td>
                ${true && true}
            </td>
        </tr>
        <tr>
            <td>6</td>
            <td>
                <pre>true && false</pre>
            </td>
            <td>
                ${true && false}
            </td>
        </tr>
        <tr>
            <td>7</td>
            <td>
                <pre>false and true</pre>
            </td>
            <td>
                ${false and true}
            </td>
        </tr>
        <tr>
            <td>8</td>
            <td>
                <pre>false and false</pre>
            </td>
            <td>
                ${false and false}
            </td>
        </tr>
        <tr>
            <td>9</td>
            <td>
                <pre>true || true</pre>
            </td>
            <td>
                ${true || true}
            </td>
        </tr>
        <tr>
            <td>10</td>
            <td>
                <pre>true || false</pre>
            </td>
            <td>
                ${true || false}
            </td>
        </tr>
        <tr>
            <td>11</td>
            <td>
                <pre>false or true</pre>
            </td>
            <td>
                ${false or true}
            </td>
        </tr>
        <tr>
            <td>12</td>
            <td>
                <pre>false or false</pre>
            </td>
            <td>
                ${false or false}
            </td>
        </tr>
        <tr>
            <td>13</td>
            <td>
                <pre>true == true</pre>
            </td>
            <td>
                ${true == true}
            </td>
        </tr>
        <tr>
            <td>14</td>
            <td>
                <pre>true == false</pre>
            </td>
            <td>
                ${true == false}
            </td>
        </tr>
        <tr>
            <td>15</td>
            <td>
                <pre>false eq true</pre>
            </td>
            <td>
                ${false eq true}
            </td>
        </tr>
        <tr>
            <td>16</td>
            <td>
                <pre>false eq false</pre>
            </td>
            <td>
                ${false eq false}
            </td>
        </tr>
        <tr>
            <td>17</td>
            <td>
                <pre>true != true</pre>
            </td>
            <td>
                ${true != true}
            </td>
        </tr>
        <tr>
            <td>18</td>
            <td>
                <pre>true != false</pre>
            </td>
            <td>
                ${true != false}
            </td>
        </tr>
        <tr>
            <td>19</td>
            <td>
                <pre>false ne true</pre>
            </td>
            <td>
                ${false ne true}
            </td>
        </tr>
        <tr>
            <td>20</td>
            <td>
                <pre>false ne false</pre>
            </td>
            <td>
                ${false ne false}
            </td>
        </tr>
        <tr>
            <td>21</td>
            <td>
                <pre>!(false || true) && false</pre>
            </td>
            <td>
                ${! (false || true) && false}
            </td>
        </tr>
        <tr>
            <td>22</td>
            <td>
                <pre>not (false or true) and false</pre>
            </td>
            <td>
                ${not (false or true) and false}
            </td>
        </tr>
        <tr>
            <td>23</td>
            <td>
                <pre>true ? false : true</pre>
            </td>
            <td>
                ${true ? false : true}
            </td>
        </tr>
        <tr>
            <td>24</td>
            <td>
                <pre>false ? false : true</pre>
            </td>
            <td>
                ${false ? false : true}
            </td>
        </tr>
    </table>
</body>
</html>