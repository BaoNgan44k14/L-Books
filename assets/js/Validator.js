// Tạo hàm
function Validator(options) {
    var formElement = document.querySelector(options.form)
    // Lấy form từ document 

    // Tạo 1 hàm nhỏ để tiện gọi sau này
    function validate (inputElement, rule) {
        // đầu tiên lấy value trong inputElement
        // test func : rule.test: trả về hàm rule
        var errorMessage = rule.test(inputElement.value);
        var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
        // Lấy thể span form-mesage trong thẻ div group
        
        if (errorMessage) {
            errorElement.innerText = errorMessage;
            // Khi có lỗi sẽ hiện lên dòng chữ Vui lòng nhập trường này trong errorMessage
            inputElement.parentElement.classList.add('invalid')
            // khi lỗi sẽ thêm 1 class là invalid giúp xuất hiện màu đỏ
        } else {
            errorElement.innerText = '';
            // Khi không có lỗi sẽ không hiện
            inputElement.parentElement.classList.remove('invalid')
            // Khi không lỗi thì màu đỏ sẽ mất đi
        }

    }
    if (formElement) {
        options.rules.forEach(function(rule) {
            var inputElement = formElement.querySelector(rule.selector);
            // Lấy 2 cột input từ formElement
            if (inputElement) {
                // Xử lí trường hợp blur khoti input
                inputElement.onblur = function () {
                    validate(inputElement,rule)
                }
                // Xử lí trường hợp khi ng dùng click vào ô nhập lại thì không hiện báo lỗi

                inputElement.oninput = function() {

                    var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
                    // Lấy thể span form-mesage trong thẻ div group  
                    errorElement.innerText = '';
                    // Khi không có lỗi sẽ không hiện
                    inputElement.parentElement.classList.remove('invalid')
                    // Khi không lỗi thì màu đỏ sẽ mất đi
                }
            }
        });
    }
}
// Định nghĩa các rule
// Nguyên tắc các rules:
// 1. Khi có lỗi thì trả ra message lỗi
// 2. Khi hợp lệ ==> không trả về gì cả
// rule username
Validator.isRequired = function(selector, message) {
    return {
        selector: selector,
        test: function(value) {
            return value.trim() ? undefined : message || 'Vui lòng nhập trường này'
            // value.trim() : loại bỏ các khoảng cách
        }
    }
}
// Rule email
Validator.isEmail = function(selector, message) {
    return {
        selector: selector,
        test: function(value) {
            var regex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            return regex.test(value) ? undefined : message || 'Vui lòng kiểm tra lại email'
        }
    }
}
// rule nhập mật khẩu
Validator.minLength = function(selector, min, message) {
    return {
        selector: selector,
        test: function(value) {
            return value.length >= min ? undefined : message || `Vui lòng nhập ${min} kí tự trở lên`;
        }
    }
}
// rule nhập lại mật khẩu 
Validator.isConfirmed = function(selector, getConfirmValue, message) {
    return {
        selector: selector,
        test: function(value) {
            return value === getConfirmValue() ? undefined : message || 'Giá trị nhập lại không chính xác'
            // có giá trị message thì sẽ lấy còn không sẽ lấy mặc định 
        }
    }
}

