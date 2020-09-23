VERSION 5.00
Object = "{5A0EB2A3-A8C2-11D2-B16E-444553540000}#10.0#0"; "PokerTool.ocx"
Begin VB.Form FrmPoker 
   BackColor       =   &H00000000&
   Caption         =   "Poker"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6120
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   6120
   StartUpPosition =   3  'Windows Default
   Begin PokerTools.PokerTool PokerTool1 
      Height          =   1815
      Left            =   120
      TabIndex        =   6
      Top             =   240
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   3201
      Cash            =   500
      Bet             =   20
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Draw"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   2400
      Width           =   5895
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Cash :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   2880
      Width           =   735
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Bet :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   3840
      TabIndex        =   4
      Top             =   2880
      Width           =   495
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   2040
      Width           =   5895
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "500"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   960
      TabIndex        =   2
      Top             =   2880
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "20"
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   4440
      TabIndex        =   1
      Top             =   2880
      Width           =   1575
   End
End
Attribute VB_Name = "FrmPoker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
PokerTool1.Draw
Label1.Caption = PokerTool1.Bet
Label2.Caption = PokerTool1.cash
Label4.Caption = PokerTool1.Hand
End Sub

Private Sub Form_Load()
PokerTool1.ChangePicBckColor vbBlack
PokerTool1.ChangeSlcBckColor vbYellow
PokerTool1.ChangeCaptionColor vbYellow
PokerTool1.initgame
PokerTool1.Bet = 50
PokerTool1.cash = 500
End Sub

