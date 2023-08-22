<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Double Expressions</title>
</head>
<body>
    <h1>EL - Expression Language</h1>
    <h3>Double Expressions</h3>

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
                <pre>-1.3e2</pre>
            </td>
            <td>
                ${-1.3e2}
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>
                <pre>3.1  +  1.9</pre>
            </td>
            <td>
                ${3.1 + 1.9}
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>
                <pre>3.1  -  1.9</pre>
            </td>
            <td>
                ${3.1 - 1.9}
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>
                <pre>3.1  *  1.9</pre>
            </td>
            <td>
                ${3.1 * 1.9}
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>
                <pre>3.1  /  1.9</pre>
            </td>
            <td>
                ${3.1 / 1.9}
            </td>
        </tr>
        <tr>
            <td>6</td>
            <td>
                <pre>3.1 div 1.9</pre>
            </td>
            <td>
                ${3.1 div 1.9}
            </td>
        </tr>
        <tr>
            <td>7</td>
            <td>
                <pre>3.1  %  1.9</pre>
            </td>
            <td>
                ${3.1 % 1.9}
            </td>
        </tr>
        <tr>
            <td>8</td>
            <td>
                <pre>3.1 mod 1.9</pre>
            </td>
            <td>
                ${3.1 mod 1.9}
            </td>
        </tr>
        <tr>
            <td>9</td>
            <td>
                <pre>(0.9 + 1.9) * 3.1</pre>
            </td>
            <td>
                ${(0.9 + 1.9) * 3.1}
            </td>
        </tr>
        <tr>
            <td>10</td>
            <td>
                <pre>3.1 == 1.9</pre>
            </td>
            <td>
                ${3.1 == 1.9}
            </td>
        </tr>
        <tr>
            <td>11</td>
            <td>
                <pre>3.1 eq 1.9</pre>
            </td>
            <td>
                ${3.1 eq 1.9}
            </td>
        </tr>
        <tr>
            <td>12</td>
            <td>
                <pre>3.1 != 1.9</pre>
            </td>
            <td>
                ${3.1 != 1.9}
            </td>
        </tr>
        <tr>
            <td>13</td>
            <td>
                <pre>3.1 ne 1.9</pre>
            </td>
            <td>
                ${3.1 ne 1.9}
            </td>
        </tr>
        <tr>
            <td>14</td>
            <td>
                <pre>3.1 <  1.9</pre>
            </td>
            <td>
                ${3.1 < 1.9}
            </td>
        </tr>
        <tr>
            <td>15</td>
            <td>
                <pre>3.1 lt 1.9</pre>
            </td>
            <td>
                ${3.1 lt 1.9}
            </td>
        </tr>
        <tr>
            <td>16</td>
            <td>
                <pre>3.1 > 1.9</pre>
            </td>
            <td>
                ${3.1 > 1.9}
            </td>
        </tr>
        <tr>
            <td>17</td>
            <td>
                <pre>3.1 gt 1.9</pre>
            </td>
            <td>
                ${3.1 gt 1.9}
            </td>
        </tr>
        <tr>
            <td>18</td>
            <td>
                <pre>3.1 <= 1.9</pre>
            </td>
            <td>
                ${3.1 <= 1.9}
            </td>
        </tr>
        <tr>
            <td>19</td>
            <td>
                <pre>3.1 le 1.9</pre>
            </td>
            <td>
                ${3.1 le 1.9}
            </td>
        </tr>
        <tr>
            <td>20</td>
            <td>
                <pre>3.1 >= 1.9</pre>
            </td>
            <td>
                ${3.1 >= 1.9}
            </td>
        </tr>
        <tr>
            <td>21</td>
            <td>
                <pre>3.1 ge 1.9</pre>
            </td>
            <td>
                ${3.1 ge 1.9}
            </td>
        </tr>
        <tr>
            <td>22</td>
            <td>
                <pre>true ? 3.1 : 1.9</pre>
            </td>
            <td>
                ${true ? 3.1 : 1.9}
            </td>
        </tr>
        <tr>
            <td>23</td>
            <td>
                <pre>false ? 3.1 : 1.9</pre>
            </td>
            <td>
                ${false ? 3.1 : 1.9}
            </td>
        </tr>
    </table>
</body>
</html>