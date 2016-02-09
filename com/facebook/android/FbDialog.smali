.class public Lcom/facebook/android/FbDialog;
.super Lcom/facebook/widget/WebDialog;
.source "FbDialog.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mListener:Lcom/facebook/android/Facebook$DialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 44
    const v4, 0x1030010

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    .line 45
    invoke-direct {p0, p4}, Lcom/facebook/android/FbDialog;->setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;
    .param p5, "theme"    # I

    .prologue
    .line 50
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    .line 51
    invoke-direct {p0, p4}, Lcom/facebook/android/FbDialog;->setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 35
    const v0, 0x1030010

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/android/Facebook$DialogListener;
    .param p4, "theme"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 40
    invoke-direct {p0, p3}, Lcom/facebook/android/FbDialog;->setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/android/FbDialog;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/facebook/android/FbDialog;->callDialogListener(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method private callDialogListener(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 9
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 65
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    if-nez v3, :cond_5

    .line 84
    :goto_4
    return-void

    .line 69
    :cond_5
    if-eqz p1, :cond_d

    .line 70
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v3, p1}, Lcom/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_4

    .line 72
    :cond_d
    instance-of v3, p2, Lcom/facebook/FacebookDialogException;

    if-eqz v3, :cond_2b

    move-object v1, p2

    .line 73
    check-cast v1, Lcom/facebook/FacebookDialogException;

    .line 74
    .local v1, "facebookDialogException":Lcom/facebook/FacebookDialogException;
    new-instance v0, Lcom/facebook/android/DialogError;

    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result v4

    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getFailingUrl()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-direct {v0, v3, v4, v5}, Lcom/facebook/android/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    .local v0, "dialogError":Lcom/facebook/android/DialogError;
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v3, v0}, Lcom/facebook/android/Facebook$DialogListener;->onError(Lcom/facebook/android/DialogError;)V

    goto :goto_4

    .line 77
    .end local v0    # "dialogError":Lcom/facebook/android/DialogError;
    .end local v1    # "facebookDialogException":Lcom/facebook/FacebookDialogException;
    :cond_2b
    instance-of v3, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v3, :cond_35

    .line 78
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v3}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    goto :goto_4

    .line 80
    :cond_35
    new-instance v2, Lcom/facebook/android/FacebookError;

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "facebookError":Lcom/facebook/android/FacebookError;
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v3, v2}, Lcom/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/facebook/android/FacebookError;)V

    goto :goto_4
.end method

.method private setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 56
    new-instance v0, Lcom/facebook/android/FbDialog$1;

    invoke-direct {v0, p0}, Lcom/facebook/android/FbDialog$1;-><init>(Lcom/facebook/android/FbDialog;)V

    invoke-virtual {p0, v0}, Lcom/facebook/android/FbDialog;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)V

    .line 62
    return-void
.end method