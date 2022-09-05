//---------------------------------------------------------------------------

#ifndef PaintH
#define PaintH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <VCLTee.TeCanvas.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Dialogs.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TPaintBox *PaintBox;
	TPanel *ToolBar;
	TColorBox *ColorBox;
	TLabel *LabelColorPen;
	TEdit *EditPenWidth;
	TLabel *LabelWidth;
	TUpDown *UpDown;
	TRadioGroup *RadioGroupPR;
	TButton *ButtonClear;
	TEdit *EditText;
	TButton *ButtonAddText;
	TComboBox *ComboBox;
	TEdit *EditTextWidth;
	TUpDown *UpDownText;
	TLabel *LabelTextSize;
	void __fastcall PaintBoxMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
		  int X, int Y);
	void __fastcall PaintBoxMouseMove(TObject *Sender, TShiftState Shift, int X,
		  int Y);
	void __fastcall PaintBoxMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
		  int X, int Y);
	void __fastcall RadioGroupPRClick(TObject *Sender);
	void __fastcall ButtonClearClick(TObject *Sender);
	void __fastcall ButtonAddTextClick(TObject *Sender);
	void __fastcall ComboBoxChange(TObject *Sender);
private:	// User declarations
	bool MouseClick;
    bool AddText;
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
