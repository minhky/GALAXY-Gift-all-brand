.class Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ShareActionProvider;)V
    .registers 2

    .prologue
    .line 392
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->a:Landroid/support/v7/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V
    .registers 3

    .prologue
    .line 392
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .registers 5

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->a:Landroid/support/v7/widget/ShareActionProvider;

    # getter for: Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    invoke-static {v0}, Landroid/support/v7/widget/ShareActionProvider;->access$500(Landroid/support/v7/widget/ShareActionProvider;)Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->a:Landroid/support/v7/widget/ShareActionProvider;

    # getter for: Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    invoke-static {v0}, Landroid/support/v7/widget/ShareActionProvider;->access$500(Landroid/support/v7/widget/ShareActionProvider;)Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->a:Landroid/support/v7/widget/ShareActionProvider;

    invoke-interface {v0, v1, p2}, Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroid/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)Z

    .line 399
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
