package Record_Extension is
type Painted_Point is new Point with
	record
		Paint : Color := White;
	end record;
-- Components X and Y are inherited

Origin : constant Painted_Point := (X | Y => 0.0, Paint => Black);

type Literal is new Expression with
	record -- a leaf in an Expression tree
		Value : Real;
	end record;
	
type Expr_Ptr is access all Expression'Class;
-- see 3.10

type Binary_Operation is new Expression with
	record -- an internal node in an Expression tree
		Left, Right : Expr_Ptr;
	end record;
	
type Addition is new Binary_Operation with null record;

type Subtraction is new Binary_Operation with null record;

-- No additional components needed for these extensions
Tree : Expr_Ptr := -- A tree representation of “5.0 + (13.0–7.0)”
new Addition'(
	Left => new Literal'(Value => 5.0),
	Right => new Subtraction'(
		Left => new Literal'(Value => 13.0),
		Right => new Literal'(Value => 7.0)
		)
	);
end Record_Extension;