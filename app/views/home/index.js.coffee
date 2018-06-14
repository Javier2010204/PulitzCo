$("#contacts .data").append("<%= j render @contacts %>")
$("#pagination").html("<%= j will_paginate @contacts %>")
