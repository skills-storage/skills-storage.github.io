<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Integer Expressions</title>
</head>
<body>
    <h1>EL - Expression Language</h1>
    <h3>Integer Expressions</h3>

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
                <pre>-2</pre>
            </td>
            <td>
                ${-2}
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>
                <pre>3  +  2</pre>
            </td>
            <td>
                ${3 + 2}
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>
                <pre>3  -  2</pre>
            </td>
            <td>
                ${3 - 2}
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>
                <pre>3  *  2</pre>
            </td>
            <td>
                ${3 * 2}
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>
                <pre>3  /  2</pre>
            </td>
            <td>
                ${3 / 2}
            </td>
        </tr>
        <tr>
            <td>6</td>
            <td>
                <pre>3 div 2</pre>
            </td>
            <td>
                ${3 div 2}
            </td>
        </tr>
        <tr>
            <td>7</td>
            <td>
                <pre>3  %  2</pre>
            </td>
            <td>
                ${3 % 2}
            </td>
        </tr>
        <tr>
            <td>8</td>
            <td>
                <pre>3 mod 2</pre>
            </td>
            <td>
                ${3 mod 2}
            </td>
        </tr>
        <tr>
            <td>9</td>
            <td>
                <pre>(1 + 2) * 3</pre>
            </td>
            <td>
                ${(1 + 2) * 3}
            </td>
        </tr>
        <tr>
            <td>10</td>
            <td>
                <pre>3 == 2</pre>
            </td>
            <td>
                ${3 == 2}
            </td>
        </tr>
        <tr>
            <td>11</td>
            <td>
                <pre>3 eq 2</pre>
            </td>
            <td>
                ${3 eq 2}
            </td>
        </tr>
        <tr>
            <td>12</td>
            <td>
                <pre>3 != 2</pre>
            </td>
            <td>
                ${3 != 2}
            </td>
        </tr>
        <tr>
            <td>13</td>
            <td>
                <pre>3 ne 2</pre>
            </td>
            <td>
                ${3 ne 2}
            </td>
        </tr>
        <tr>
            <td>14</td>
            <td>
                <pre>3 <  2</pre>
            </td>
            <td>
                ${3 < 2}
            </td>
        </tr>
        <tr>
            <td>15</td>
            <td>
                <pre>3 lt 2</pre>
            </td>
            <td>
                ${3 lt 2}
            </td>
        </tr>
        <tr>
            <td>16</td>
            <td>
                <pre>3  >  2</pre>
            </td>
            <td>
                ${3 > 2}
            </td>
        </tr>
        <tr>
            <td>17</td>
            <td>
                <pre>3 gt 2</pre>
            </td>
            <td>
                ${3 gt 2}
            </td>
        </tr>
        <tr>
            <td>18</td>
            <td>
                <pre>3 <= 2</pre>
            </td>
            <td>
                ${3 <= 2}
            </td>
        </tr>
        <tr>
            <td>19</td>
            <td>
                <pre>3 le 2</pre>
            </td>
            <td>
                ${3 le 2}
            </td>
        </tr>
        <tr>
            <td>20</td>
            <td>
                <pre>3 >= 2</pre>
            </td>
            <td>
                ${3 >= 2}
            </td>
        </tr>
        <tr>
            <td>21</td>
            <td>
                <pre>3 ge 2</pre>
            </td>
            <td>
                ${3 ge 2}
            </td>
        </tr>
        <tr>
            <td>22</td>
            <td>
                <pre>true ? 3 : 2</pre>
            </td>
            <td>
                ${true ? 3 : 2}
            </td>
        </tr>
        <tr>
            <td>23</td>
            <td>
                <pre>false ? 3 : 2</pre>
            </td>
            <td>
                ${false ? 3 : 2}
            </td>
        </tr>
    </table>
</body>
</html>