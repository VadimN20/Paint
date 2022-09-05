//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Paint.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
	Form1->BorderStyle = bsSingle;
	MouseClick = false;
	AddText = false;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::PaintBoxMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
	MouseClick = true;
	PaintBox->Canvas->MoveTo(X, Y);

	PaintBox->Canvas->Pen->Width = StrToIntDef(EditPenWidth->Text, 1);
	if(RadioGroupPR->ItemIndex == 0) {
		PaintBox->Canvas->Pen->Color = ColorBox->Selected;
	}
	else if(RadioGroupPR->ItemIndex == 1) {
		PaintBox->Canvas->Pen->Color = clWhite;
	}
	//If button AddText was clicked, click on paintBox and show text
	if(AddText == true) {
		PaintBox->Canvas->TextOut(X, Y, EditText->Text);
		AddText = false;
	}

}
//---------------------------------------------------------------------------

void __fastcall TForm1::PaintBoxMouseMove(TObject *Sender, TShiftState Shift,
          int X, int Y)
{
	if(MouseClick) {
		PaintBox->Canvas->LineTo(X, Y);
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::PaintBoxMouseUp(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
	MouseClick = false;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::RadioGroupPRClick(TObject *Sender)
{
	if(RadioGroupPR->ItemIndex == 0) {
		LabelWidth->Caption = "Pen width";
	}
	else if(RadioGroupPR->ItemIndex == 1) {
		LabelWidth->Caption = "Rubber width";
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ButtonClearClick(TObject *Sender)
{
	if (MessageDlg("Clear everything, are you sure?", mtConfirmation,
				TMsgDlgButtons() << mbYes << mbNo,0) == mrYes) {
		Refresh();
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ButtonAddTextClick(TObject *Sender)
{
	AddText = true;
    PaintBox->Canvas->Font->Size = StrToIntDef(EditTextWidth->Text, 8);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::ComboBoxChange(TObject *Sender)
{
	if(ComboBox->ItemIndex == 0) {
		PaintBox->Canvas->Font->Name = "Times New Roman";
	}
	else if(ComboBox->ItemIndex == 1) {
		PaintBox->Canvas->Font->Name = "Impact";
	}
	else if(ComboBox->ItemIndex == 2) {
		PaintBox->Canvas->Font->Name = "Georgia";
	}
	else if(ComboBox->ItemIndex == 3) {
		PaintBox->Canvas->Font->Name = "Courier New";
	}
}
//---------------------------------------------------------------------------
