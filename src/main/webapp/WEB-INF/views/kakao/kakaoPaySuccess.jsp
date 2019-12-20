<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: blue">success</h1>
결제일시:     [[${info.approved_at}]]<br/>
주문번호:    [[${info.partner_order_id}]]<br/>
상품명:    [[${info.item_name}]]<br/>
상품수량:    [[${info.quantity}]]<br/>
결제금액:    [[${info.amount.total}]]<br/>
결제방법:    [[${info.payment_method_type}]]<br/>
{
 "aid": ${info.aid },
 "tid": ${info.tid },
 "cid": ${info.cid },
 "partner_order_id": ${info.partner_order_id },
 "partner_user_id": ${info.partner_user_id },
 "payment_method_type": "${info.payment_method_type }",
 "item_name": "${info.item_name }",
 "quantity": ${info.quantity },
 "amount": {
  "total": ${info.amount.total },
  "tax_free":${info.amount.tax_free },
  "vat": ${info.amount.vat },
  "point": ${info.amount.point }
 },
 "created_at": "${info.created_at }",
 "approved_at": "${info.approved_at }"
}
<h2>[[${info}]]</h2>
</body>
</html>