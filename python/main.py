from utils import greet, add_numbers

if __name__ == "__main__":
    user_name = "Eugen"
    message = greet(user_name)
    print(message)

    num1 = 10
    num2 = 5
    sum_result = add_numbers(num1, num2)
    print(f"The sum of {num1} and {num2} is: {sum_result}")