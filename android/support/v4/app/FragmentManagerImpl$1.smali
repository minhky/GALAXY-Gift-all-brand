.class Landroid/support/v4/app/FragmentManagerImpl$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$1;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$1;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 518
    return-void
.end method
