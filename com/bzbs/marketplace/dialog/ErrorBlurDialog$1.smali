.class Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$1;
.super Ljava/lang/Object;
.source "ErrorBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->dismiss()V

    .line 122
    return-void
.end method
