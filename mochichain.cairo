use traits::TryInto;
use option::OptionTrait;

fn initiate() {
    let x: felt252 = 56; //x is of type felt252
    let y: u64 = x.try_into().unwrap(); //Since a felt252 might not fit in a u64, we need to unwrap the Option<T> type
}

fn setupinitialblock() {
    let varr = 'Hello, World';
    varr.print();
    varr = 'Hello, there';
    varr.print();
}


fn addblock() {
    let mut varr = 'Hello, World';
    varr.print();
    varr = 'Hello, there';
    varr.print();
}

fn connectblocks() {
    let x = 5;
    let x = x + 1; //x shadows to give a value of 6
    {
        let x = x * 2; // 6 * 2 = 12
        'Inner scope x value is:'.print();
        x.print()
    }
    'Outer scope x value is:'.print();
    x.print(); //6
}



