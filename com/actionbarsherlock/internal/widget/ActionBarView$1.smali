.class Lcom/actionbarsherlock/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p1, "parent"    # Lcom/actionbarsherlock/internal/widget/IcsAdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 146
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCallback:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$0(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 147
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCallback:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$0(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 149
    :cond_11
    return-void
.end method

.method public onNothingSelected(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)V
    .registers 2
    .param p1, "parent"    # Lcom/actionbarsherlock/internal/widget/IcsAdapterView;

    .prologue
    .line 152
    return-void
.end method